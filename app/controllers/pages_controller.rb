class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :carrera, :biografia, :videos, :contact]

  def home
  end

  def carrera
  end

  def biografia
  end

  def videos
  end

  def contact
  end
end
