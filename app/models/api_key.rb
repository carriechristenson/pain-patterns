class ApiKey < ActiveRecord::Base
  belongs_to :patient

  validates :patient, presence: true
  validates :access_token, presence: true
  validates :expires_at, presence: true

  before_create :generate_access_token
  before_create :set_expiration

  def expired?
    DateTime.now >= self.expires_at
  end

  private

  def set_expiration
    self.expires_at = DateTime.now+30
  end

  def generate_access_token
    loop do
      self.access_token = SecureRandom.hex
      break unless self.class.exists?(access_token: access_token)
    end
  end
end
