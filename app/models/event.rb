class Event < ActiveRecord::Base

	has_many :items
    accepts_nested_attributes_for :items,  :reject_if => :all_blank, :allow_destroy => true

	has_and_belongs_to_many :users
end
