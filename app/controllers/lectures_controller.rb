class LecturesController < ApplicationController
    before_action :authenticate_asesor!, only: [:create, :new]
    def index
        @lecture = Lecture.all
    end 
    
    def show
        @lecture = Lecture.find(params[:id])
        @student = Student.new
    end
    
    def new
        @lecture= Lecture.new
    end 
    
    def create
        @lecture = current_asesor.lectures.new(lecture_params)
        
        if @lecture.save
            redirect_to @lecture
        else
            render :new
        end
    end
    
    def destroy
        @lecture = Lecture.find(params[:id])
        @lecture.destroy
        redirect_to lectures_path
    end 
    
    def update
        @lecture= Lecture.find(params[:id])
        if @lecture.update(lecture_params)
            redirect_to @lecture
        else
            render :edit
        end
    end
    
    def edit
        @lecture = Lecture.find(params[:id])
    end 
    
    private 
    
        def lecture_params
        params.require(:lecture).permit(:title, :hour_start, :hour_end, :place, :date_lecture, :cost_per_hour)
        end

end 