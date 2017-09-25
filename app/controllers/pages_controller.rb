class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :carrera, :biografia]

  def home
  end

  def carrera
  end

  def biografia
  end

end
