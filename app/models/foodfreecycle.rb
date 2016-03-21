class Foodfreecycle < ActiveRecord::Base

after_commit :send_email, :on => :create

  def send_email
    # send the email to all emails in system
  end

has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "50x50#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

has_many :foodfreecyclecomments
  validates :food, presence: true,
                    length: { minimum: 5 }

validates :food, presence: true,
                    length: { minimum: 5 }

end
