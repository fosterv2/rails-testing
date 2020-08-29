class Author < ApplicationRecord
    has_many :books

    validates :name, presence: true
    validates :age, numericality: { greater_than: 0 }
end
