class FieldsController < ApplicationController
  def index
    render json: {
      fields: Field.all
    }
  end
end
