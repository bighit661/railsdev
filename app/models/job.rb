# == Schema Information
#
# Table name: jobs
#
#  id                  :bigint           not null, primary key
#  company_name        :string
#  company_website     :string
#  compensation_range  :string
#  compensation_type   :string
#  estimated_hours     :string
#  featured            :boolean          default(FALSE)
#  featured_until      :datetime
#  headquarters        :string
#  link_to_apply       :string
#  price               :integer
#  published_at        :datetime
#  remote              :boolean          default(FALSE)
#  slug                :string
#  status              :string           default("pending")
#  title               :string
#  upsell_type         :string
#  years_of_experience :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_jobs_on_slug     (slug) UNIQUE
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  has_rich_text :description
  has_rich_text :company_description
  has_one_attached :company_logo

  JOB_STATUSES ={
    pending: 'pending',
    published: 'pending',
    archived: 'archived'
  }.freeze
  end

  COMPENSATION_RANGE = [
    "Contract",
    "Full-Time" 
]


  HOURLY_RANGE = [
    "less than 10",
    "10-30",
    "30-60",
    "60-90",
    "100 or More",
  ].freeze

  YEARS_OF_EXPERIENCES_RANGE = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10 or More"
].freeze

  COMPENSATION_RANGE = [
    "50,000 - 60,000",
    "60,000 - 70,000",
    "70,000 - 80,000",
    "80,000 - 90,000",
    "90,000 - 100,000",
    "100,000 - 110,000",
    "110,000 - 120,000",
    "120,000 - 130,000",
    "130,000 - 140,000",
    "140,000 - 150,000",
    "150,000 - 160,000",
    "160,000 - 170,000",
    "170,000 - 180,000",
    "180,000 - 190,000",
    "200,000 or Above ",
  ].freeze

  def pending?
    self.status == Job::JOB_STATUSES[:pending]
  end

  def published?
    self.status == Job::JOB_STATUSES[:published]
  end

  def archived?
    self.status == Job::JOB_STATUSES[:archived]
  end

def should_generate_new_friendly_id?
  if !slug?
    title_change?
  else
    false
  end
end
