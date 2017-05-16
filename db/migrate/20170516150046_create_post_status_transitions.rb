class CreatePostStatusTransitions < ActiveRecord::Migration[5.1]
  def change
    create_table :post_status_transitions do |t|
      t.references :post, foreign_key: true
      t.string :namespace
      t.string :event
      t.string :from
      t.string :to
      t.timestamp :created_at
    end
  end
end
