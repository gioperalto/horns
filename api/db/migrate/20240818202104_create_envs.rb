class CreateEnvs < ActiveRecord::Migration[7.1]
  def change
    create_table :envs do |t|
      t.string :name
      t.string :owner
      t.string :team

      t.timestamps
    end
  end
end
