# toppage contrller
class TopController < ApplicationController
  def index
    if params[:id]
      @registered_point = AccidentPoint.find(params[:id])
      @ap = Search.new(@registered_point.latitude, @registered_point.longitude)
    elsif params[:address].present?
      @address = Geocoder.search(params[:address])
      @ap = Search.new(@address[0].data["geometry"]["location"]["lat"], @address[0].data["geometry"]["location"]["lng"])
    else
      @ap = Search.new
    end
    # できれば緯度経度で絞り込む

    # @registered_points = AccidentPoint.all.to_json(include: disaster_pictures)
    # acs.each {|ac| [].push(AccidentPoint.includes(:disaster_pictures).select("disaster_pictures.image"))}
    # AccidentPoint.all.each {|ac| [].push(AccidentPoint.includes(:disaster_pictures).select("disaster_pictures.image"))}
    @registered_points = AccidentPoint.all.to_json
    # render json: @registered_points, include: [:disaster_pictures]
  end
end
