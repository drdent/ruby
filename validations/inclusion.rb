require 'active_model'

class Inclusion
  include ActiveModel::API

  STATES = %w[active pending closed]

  attr_accessor :state, :state_without_presence, :state_without_allow_blank

  validates :state, presence: true, inclusion: { in: STATES, allow_blank: true }
  validates :state_without_presence, inclusion: { in: STATES, allow_blank: true }
  validates :state_without_allow_blank, presence: true, inclusion: { in: STATES }
end