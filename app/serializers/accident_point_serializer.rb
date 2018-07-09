class AccidentPointSerializer < ActiveModel::Serializer
  attributes :id,
             :content,
             :latitude,
             :longitude
  has_many :disaster_pictures
end
