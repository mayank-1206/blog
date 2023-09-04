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
  validates :title, uniqueness: true
  validates :body, presence: true
  validates :terms_of_service, acceptance: true
  validates :body, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }  
  after_initialize do |article|
    puts "You have initialized an object!"
  end
  after_save_commit :log_user_saved_to_db

  private
    def log_user_saved_to_db
      puts 'User was saved to database'
    end
end

