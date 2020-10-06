class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :subj
      t.string :tags
      t.string :content
      t.string :quiz
      t.string :status
      t.string :admin

      t.timestamps
    end
  end
end
