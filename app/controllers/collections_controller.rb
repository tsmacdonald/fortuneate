class CollectionsController < ApplicationController
  active_scaffold :"collection" do |conf|
    conf.nested.add_link(:tunes)
  end
end
