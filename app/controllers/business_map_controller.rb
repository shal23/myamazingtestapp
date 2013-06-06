class BusinessMapController < ApplicationController
  def index
  	@json = Business.all.to_gmaps4rails
  end
end
