class FormsController < ApplicationController
  def submit
    if current_user.id
      Form.create({
        date_time: current_user.login,
        sand: params[:sand] == 'Y' ? true : false,
        description: params[:description],
        gallons: params[:gallons].to_i(),
        application: params[:application],
        method: params[:method],
        soil: params[:soil],
        weather: params[:weather],
        temp: params[:temp].to_i(),
        notes: params[:notes],
        start: params[:start],
        end: params[:end],
        user: current_user,
        field_id: params[:field].to_i()
      })
    end
  end
end
