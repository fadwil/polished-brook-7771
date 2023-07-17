class Project < ApplicationRecord
  validates_presence_of :name, :material

  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects 

  def contestant_count
    self.contestants.count
  end

  def experience_average
    contestants.average(:years_of_experience)
  end
end
