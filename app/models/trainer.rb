class Trainer < ActiveRecord::Base
    has_many :pets

    def self.sum_pay
        Trainer.pluck(:payrate).sum
    end
end