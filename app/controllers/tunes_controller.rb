class TunesController < ApplicationController
#  record_select search_on: :tune_type, label: Proc.new { |r| r.composer }, per_page: 1
  active_scaffold :"tune" do |config|
    config.columns = [:title, :key, :meter, :composer, :tune_type, :bass_type, :treble_part_count, :variation_count, :movement_count]
#    config.columns[:composer].form_ui = :record_select
    config.columns[:tune_type].form_ui = :select
    config.columns[:tune_type].options = {options: Tune.available_types}
    config.columns[:bass_type].form_ui = :select
    config.columns[:bass_type].options = {options: Tune.available_bass_types}
    config.columns

  end

  def variations
    @tunes = Tune.where('variation_count > 0')
    render 'index'
  end

  def two_parts
    @tunes = Tune.where('treble_part_count > 1')
    render 'index'
  end

  def minuets
    @tunes = Tune.where(tune_type: 'Minuet')
    render 'index'
  end
end
