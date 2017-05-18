class Post < ApplicationRecord
  attr_accessor :description
  state_machine :status, initial: :walk do
    audit_trail context: [:name, :description, :another_description]
    event :start do
      transition all => :run
    end
    event :stop do
      transition all => :walk
    end
  end

  def another_description
    name
  end
end
