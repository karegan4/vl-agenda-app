class AssignmentsController < ApplicationController
    def index
        @assignments = current_user.assignments
    end

    def show
        @assignment = Assignment.find(params[:id])
    end

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = Assignment.create(assignment_params)
        if @assignment.save
            redirect_to assignment_path(@assignment)
        else
            render :new
        end
    end

    def edit
        @assignment = Assignment.find(params[:id])
    end

    def update
        @assignment = Assignment.find(params[:id])
        @assignment.update(assignment_params)
        redirect_to assignment_path(@assignment)
    end

    def destroy
    end

    private
    
    def assignment_params
        params.require(:assignment).permit(:assignment_name, :assignment_type, :instructions, :due_date, :user_id)
    end


end