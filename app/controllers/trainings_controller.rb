class TrainingsController < ApplicationController
  
  def new
    @trainig = Trainig.new
  end
  
  def create
    @trainig = Trainig.new(trainig_params)
    @trainig.save
    redirect_to finish_trainig_path
  end
  
  def finish
  end
  
  def index
    @trainigs = Trainig.all
  end
  
  def show
    @trainig = Trainig.find(params[:id])
  end
  
  def edit
    @trainig = Trainig.find(params[:id])
  end
  
  def update
    @trainig = Trainig.find(params[:id])
    @trainig.update(trainig_params)
    redirect_to trainig_path(@trainig.id)
  end
  
  def destroy
    @trainig = Trainig.find(params[:id])
    @trainig.destroy
    redirect_to trainigs_path
  end
  
  private
  
  def trainig_params
    params.require(:trainig).permit(:menu,:kg,:count,:set)
  end
  
end
