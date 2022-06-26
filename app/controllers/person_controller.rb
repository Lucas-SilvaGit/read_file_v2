class PersonController < ApplicationController
  def index
    @person = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to person_path, notice: 'Person was successfully uploaded.'
    else
      render "new"
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to person_path, notice: 'Person was successfully deleted.'
  end

  private
  def person_params
    params.require(:person).permit(:name, :attachment)
  end
  
end
