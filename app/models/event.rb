class Event < ActiveRecord::Base

include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

#ef self.search(params)
#	.search(load: true) do
		#query { string params[:query] } if params[:query].present?
	#end
#end

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

has_many :eventcomments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

#@events = if params[:term]
    #Event.where('title LIKE ?', "%#{params[:term]}%")
  #else
   # Event.all
  #end
end
#def self.search(search)
  #where("location LIKE ?", "%#{search}%") 
  #where("description LIKE ?", "%#{search}%")
#end

# searchkick text_start: [‘title’], text_start: [‘location’]


