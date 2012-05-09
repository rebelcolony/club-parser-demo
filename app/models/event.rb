class Event < ActiveRecord::Base
  attr_accessible :date, :flyer, :title, :url, :price_attributes, :places_attributes
  has_one :price, dependent: :destroy
  has_many :places, dependent: :destroy
  accepts_nested_attributes_for :places
  accepts_nested_attributes_for :price

  def self.fetch
  	data = ClubParser.fetch_all_from :amnesia
  	puts data
  	if data
	  	data[:amnesia][:events].each do |event|
	  		Event.create!(event)
	  	end
  	end
  end
end
