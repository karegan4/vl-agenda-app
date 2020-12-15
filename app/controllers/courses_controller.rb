class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new
        @course.course_name = params[:course_name]
        @course.teacher_name = params[:teacher_name]
        @course.save
        redirect_to course_path(@course)
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(params.require(:course).permit(:course_name, :teacher_name))
        redirect_to course_path(@course)
    end
end