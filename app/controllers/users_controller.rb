class UsersController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: {
        userId: user.id,
        firstName: user.first_name,
        lastName: user.last_name,
        initials: user.first_name[0] + user.last_name[0],
        logInStamp: DateTime.now().strftime('%a, %b %d %Y %H:%M:%S')
      }
    else
      render json: {
        error: 'Incorrect information'
      }, status: 401
    end
  end
end
