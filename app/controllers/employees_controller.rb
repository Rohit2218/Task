class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end
    def activity
        @employee = Employee.find(params[:id])
        if @employee.is_active 
            @employee.update(is_active: false)
            redirect_to employees_path
        else
            @employee.update(is_active: true)
            redirect_to employees_path
        end
    end


    def show
        @employee = Employee.find(params[:id])
        puts 'hi'
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        @employee.save
        redirect_to employees_path
    end

    def destroy     
        puts "Inside destroy"  
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end   

    def edit
        @employee = Employee.find(params[:id])
    end
    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employees_path
    end

    def manager
        @manager = Employee.find(params[:id]).manager
    end


    private
    def employee_params
        params.require(:employee).permit(:emp_id,:name,:date_of_joining,:leaves,:company,:department,:is_active,:manager_id,:is_manager)
    end
end
