require 'pry'

class Pet < ActiveRecord::Base
    belongs_to :trainer

    def self.species_count
        total_species_counts = ""
        petArray = Pet.select(:species).distinct
        species_array = petArray.map do |pet|
                pet.species
            end
    
        species_array.each do |species|
            count = Pet.where("species = '#{species}'").count
            total_species_counts += "#{species}: #{count} "
        end
        total_species_counts
    end
end