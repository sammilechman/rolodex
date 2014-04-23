class ContactShare < ActiveRecord::Base
  validates :user_id, presence: true
  validates :contact_id, presence: true
  validates_uniqueness_of :user_id, :scope => :contact_id

  belongs_to :user

  belongs_to :contact,
    class_name: 'Contact', foreign_key: :contact_id,
    primary_key: :id

end
