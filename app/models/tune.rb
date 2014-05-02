class Tune < ActiveRecord::Base
  belongs_to :collection
  validates :meter, format: { with: /(\d+\/\d+)|C|C\|/ }
  validates :key, format: { with: /[A-G](m|(\s?\w+))/ }
end
