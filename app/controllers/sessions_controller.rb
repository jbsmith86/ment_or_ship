class SessionsController < ApplicationController
  def new
  end

  def create
    person = Person.find_by(email: params[:email])
    if person && person.authenticate(params[:password])
      session[:user_id] = person.id
      flash[:notice] = "Signed in"
      redirect_to businesses_path
    else
      flash.now[:notice] = "Email/password did not match."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to root_url
  end
end
