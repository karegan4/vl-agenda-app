class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end

    def show
        @assignment = Assignment.find(params[:id])
    end

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = Assignment.new
        @assignment.assignment_name = params[:assignment_name]
        @assignment.assignment_type = params[:assignment_type]
        @assignment.instructions = params[:instructions]
        @assignment.due_date = params[:due_date]
        @assignment.save
        redirect_to assignment_path(@assignment)
    end

    def edit
        @assignment = Assignment.find(params[:id])
    end

    def update
        @assignment = Assignment.find(params[:id])
        @assignment.update(params.require(:assignment).permit(:assignment_name, :assignment_type, :instructions, :due_date))
        redirect_to assignment_path(@assignment)
    end


end