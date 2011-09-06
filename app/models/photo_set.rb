class PhotoSet < ActiveRecord::Base
  attr_accessor :terms

  attr_accessible :photo_1, :photo_2, :your_title, :your_name, :terms, :status

  mount_uploader :photo_1, PhotoUploader
  mount_uploader :photo_2, PhotoUploader

  validates_presence_of :photo_1, :photo_2, :your_title, :your_title
  validates_acceptance_of :terms
  validates_inclusion_of :status, :in => %w(pending approved rejected)

  after_create :send_notification

  scope :pending, where(:status => 'pending')
  scope :approved, where(:status => 'approved')
  scope :rejected, where(:status => 'rejected')

  protected

  def send_notification
    Notifier.notification.deliver
  end
end
