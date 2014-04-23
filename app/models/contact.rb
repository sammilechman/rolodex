class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  belongs_to :owner,
    class_name: "User",
    foreign_key: :user_id

  has_many :contact_shares

  has_many :comments, as: :object

  has_many :shared_users,
    through: :contact_shares,
    source: :user

  def self.contacts_for_user_id(user_id)

    Contact.includes(:contact_shares)
      where("contact_shares.user_id = ? OR ? = contacts.user_id",
      user_id, user_id)
  end
end