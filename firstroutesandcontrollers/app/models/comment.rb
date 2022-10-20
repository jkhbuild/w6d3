# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  user_id    :bigint           not null
#  artwork_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to :author,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

end
