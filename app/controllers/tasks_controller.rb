require "pry"
class TasksController < ApplicationController
    get "/tasks" do
        tasks = Task.all

        tasks.to_json(include: :employee)
        tasks.to_json(include: :team)
    end
    post "/tasks" do
        task = Task.create(params)
        task.to_json(include: :employee)
    end

    patch "/tasks/:id" do
        task = Task.find(params[:id])
        task.update({status:params[:status], due_date:params[:due_date]})
        task.to_json(include: :employee)
    end

    delete "/tasks/:id" do
        task = Task.find(params[:id])
        task.destroy
        {message: "Task Was deleted"}.to_json
    end
end