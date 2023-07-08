# app/serializers/hero_serializer.rb
class HeroSerializer < ActiveModel::Serializer
    attributes :id, :name, :power
  
    def power
      object.power.name
    end
  end
  