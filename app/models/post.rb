class Post < ApplicationRecord
  state_machine :status, initial: :walk do
    event :start do
      transition all => :run
    end
    event :stop do
      transition all => :walk
    end
  end
end
