class EmployeesController < ApplicationController
    get "/employees" do 
        employees = Employee.all
        employees.to_json(include:{tasks:{include: :team}})
    end
end