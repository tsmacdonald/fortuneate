class TunesController < ApplicationController
  active_scaffold :"tune" do |config|
    #config.columns[:bass_type].form_ui = :select
    #config.columns[:composer].form_ui = :select
    #config.columns[:tune_type].form_ui = :select
  end
end
