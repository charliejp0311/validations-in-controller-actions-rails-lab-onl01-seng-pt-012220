class Post < ActiveRecord::Base
    validates :title, presence: {message: "must not be empty"}
    validates :content, length: {minimum: 100}
    validates :category, inclusion: {within: %w(Fiction Non-Fiction)}
end
