class Project < ApplicationRecord
    has_many :proj_users,dependent: :destroy
    accepts_nested_attributes_for :proj_users, allow_destroy: true,reject_if: :all_blank
    has_many :bugzs, dependent: :destroy, inverse_of: :project
   
end
