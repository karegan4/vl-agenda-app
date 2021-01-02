class CoursesController < ApplicationController

    def index

        @courses = current_user.courses
        

    end

    def show
        @course = Course.find(params[:id])
        @course_name = @course.course_name.to_s
        @assignments = current_user.assignments
        
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.create(course_params)
        if @course.save
            redirect_to course_path(@course)
        else
            render :new
        end
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def destroy
    end

    private

    def course_params
        params.require(:course).permit(:course_name, :teacher_name, :user_id)
    end
end