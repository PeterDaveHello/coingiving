class DepositAddress < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :project
end
