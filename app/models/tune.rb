class Tune < ActiveRecord::Base
  belongs_to :collection
  after_initialize :init
  before_save :clean

  validates_presence_of :collection
  validates_presence_of :title
  validates :key,   format: { with: /[A-G](m|(\s?\w+))?/ }, presence: true
  validates :meter, format: { with: /(\d+\/\d+)|C|C\|/ },  presence: true

  def init
    self.variation_count ||= 0
    self.treble_part_count ||= 1
    self.movement_count ||= 1
    self.bass_type ||= "None"
    self.composer ||= self.collection.try :collector
  end

  def clean
    self.composer.try :strip!
  end

  def self.available_types
    %w(
      Reel
      Strathspey
      Jig
      March
      Air
      Pibroch
      Minuet
      Sonata
      Gavotte
      Minuetto
      Hornpipe
      Waltz
      Variation\ Piece
    ).sort + %w(Other)
  end

  def self.available_bass_types
    %w(
      None
      Ground
      Composed
    )
  end
end
