class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  
  validates_uniqueness_of :name

   def user_with_proficiency(val)
    User.find(Proficiency.find_by_proficiency(val).user_id)
  end

end
