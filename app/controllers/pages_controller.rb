class PagesController < ApplicationController
  layout 'pages'
  def index
  end

  def about
  end

  def contact
      @position = Position.new(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to @position, notice: 'Cargo creado correctamente.' }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
  end
  end

  def services
  end
end
