class Todolist < ApplicationRecord
    has_many :todoitems, dependent: :destroy
end
