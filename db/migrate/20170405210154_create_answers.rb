class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.text :answer
      t.text :code
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
