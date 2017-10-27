class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :first_name, :surname, :email, :content

  validates :first_name,
    presence: true

  validates :surname,
    presence: true

  validates :email,
    presence: true

  validates :content,
    presence: true

end
