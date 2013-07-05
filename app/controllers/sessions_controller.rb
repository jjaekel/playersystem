class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to players_path,
                  notice: "Angemeldet!"
    else
      flash.now.alert = "Fehlerhafte E-Mail-Adresse oder Passwort"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to players_path,
                notice: "Abgemeldet"

  end
end
