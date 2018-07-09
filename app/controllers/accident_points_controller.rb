# acciedent contrller
class AccidentPointsController < ApplicationController
  def create
    ac = AccidentPoint.new(content: accident_point_params[:content],
                           latitude: accident_point_params[:latitude],
                           longitude: accident_point_params[:longitude])
    ac.disaster_pictures.build(image: accident_point_params[:convert_image])
    ac.save!
    redirect_to root_path
  end
  private
  def accident_point_params
    params.fetch(:accident_point, {}).permit(:content, :image, :convert_image, :latitude, :longitude)
  end
end
  