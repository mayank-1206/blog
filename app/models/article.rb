class GoodnessValidator < ActiveModel::Validator
  def validate(article)
    if article.title == "Evil"
      article.errors.add :base, "This person is evil"
    end
  end
end


class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  validates_with GoodnessValidator
  validates :title, presence: true
  validates :body, presence: true
  validates :terms_of_service, acceptance: true
  validates :body, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
