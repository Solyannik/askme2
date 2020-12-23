class Subscription < ActiveRecord::Base
  REGEXP_EMAIL = /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/

  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true

  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: REGEXP_EMAIL, unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }
  validate :custom_event?
  validate :check_email_user

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  def custom_event?
    if user.present?
      if event.user == user
        errors.add(:user, :own_custom_event)
      end
    end
  end

  private

  def check_email_user
    if user_id.blank? && user_email.present?
      errors.add(:user_email, :error_message) if User.exists?(email: user_email)
    end
  end
end
