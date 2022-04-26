class EmployeesController < ApplicationController
    get "/employees" do 
        employees = Employee.all
        employees.to_json(include:{tasks:{include: :team}})
    end

    post "/employees" do
        employee = Employee.create(params)
        employee.to_json
    end
end