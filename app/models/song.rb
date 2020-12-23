class Song < ApplicationRecord
    validates_presence_of :title
    validate :release_year_val
    validates :title, uniqueness: {scope: :artist_name, scope: :release_year}
   
    def release_year_val
        if self.released == true && !self.release_year.present?
            errors.add(:release_year, "This song must have a release year.")
        elsif self.release_year && self.release_year > Time.now.year
            errors.add(:release_year, "You can't have a released date in the future!")
        end
    end
end
