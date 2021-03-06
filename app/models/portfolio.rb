class Portfolio < ActiveRecord::Base

  belongs_to :user
  has_many :holdings
  has_many :stocks, through: :holdings
  accepts_nested_attributes_for :holdings,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
