class TrainersController < ApplicationController
  ##before_action :check_for_admin
  before_action :fetch_trainer

  def new # Function that holds a new trainer  
  end

  def index
    @trainers = Trainer.all # Grabbing all the trainers 
  end

  def edit
    @trainer = Trainer.find params[:id]
  end

  def create
    @trainer = Trainer.new trainer_params
    if @trainer.save
    else
      render :new
    end
  end

  def update
    trainer = Trainer.find params[:id] # Find the selected trainer, we do not want a global varible because we only want to access this variable within this update
    trainer.update trainer_params # Update the trainer selected with the params entered into the fields 
    redirect_to trainer # After the updat redirect back
  end 

  def show
    @trainer = Trainer.find params[:id]
  end

  private 
  def trainer_params
    params.require(:trainer).permit(:name, :speciality ,:email, :password, :password_confirmation)
  end

end