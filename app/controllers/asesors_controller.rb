class AsesorsController < ApplicationController
    def index
        @asesor = Asesor.all
    end 
    
    def show
        @asesors = Asesor.find(params[:id])
    end
    
    def new
        @asesor= Asesor.new
    end 
    def create
        @asesor= Asesor.new(name: params[:asesor][:name],
        identification: params[:asesor][:identification])
        
        if @asesor.save
            redirect_to @asesor
        else
            render :new
        end
    end
    
    def update
    end
end
