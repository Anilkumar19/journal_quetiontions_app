class CreateGenaralQuestionLists < ActiveRecord::Migration
  def change
    create_table :genaral_question_lists do |t|
      t.string :question
      t.string :answer
      t.string :category

      t.timestamps null: false
    end
  end
end
