class DisasterCategory < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :category
end
