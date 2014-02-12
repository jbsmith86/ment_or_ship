class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      session[:user_id] = @person.id
      redirect_to root_path
    end
  end

private

  def person_params
    params.require(:person).permit(:name, :birthday, :city, :phone_number, :email, :password, :password_confirmation)
  end

end
