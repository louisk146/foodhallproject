class Event < ActiveRecord::Base
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

has_many :eventcomments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

# searchkick text_start: [‘title’], text_start: [‘location’]

end

