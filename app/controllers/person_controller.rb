class PersonController < ApplicationController
  def index
    @Person = Person.all
  end

  def new
    @Person = Person.new
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
    @Person = Person.show
  end

  def destroy
    @Person = Person.find(params[:id])
    @Person.destroy

    redirect_to person_path, notice: 'Person was successfully deleted.'
  end

  private
  def person_params
    params.require(:person).permit(:name, :attachment)
  end
  
end
