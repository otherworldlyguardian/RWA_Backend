class UsersController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      User.update(user.id, :login => DateTime.now().strftime('%a, %b %d %Y %H:%M:%S'))
      render json: {
        userId: user.id,
        firstName: user.first_name,
        lastName: user.last_name,
        logInStamp: user.login,
        rwa: issue_token({id: user.id})
      }
    else
      render json: {
        error: 'Incorrect information'
      }, status: 401
    end
  end

  def auth
    user = current_user
    if user
      render json: {
        userId: user.id,
        firstName: user.first_name,
        lastName: user.last_name,
        initials: user.first_name[0] + user.last_name[0]
      }
    end
  end
end
