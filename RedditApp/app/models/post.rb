class Post < ApplicationRecord
    validates :title, presence: true
    validates :sub_id, presence: true, uniqueness: true
    validates :author_id, presence: true, uniqueness: true

    belongs_to :sub,
        class_name: :Sub,
        primary_key: :id,
        foreign_key: :sub_id

    belongs_to :author,
        class_name: :User,
        primary_key: :id,
        foreign_key: :author_id


end