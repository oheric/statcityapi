class CreatePlayerstats < ActiveRecord::Migration
  def change

    #create table named users, the plural of user, which is our model name
    create_table :playerstats do |t|

      #define the attributes (columns), and give them a type, in this case string 
      t.string :firstname
      t.string :lastname
      t.string :team
      t.float :gp
      t.float :minutes
      t.float :fgm
      t.float :fga
      t.float :fgpct
      t.float :threem
      t.float :threea
      t.float :threepct
      t.float :ftm
      t.float :fta
      t.float :ftpct
      t.float :offreb
      t.float :defreb
      t.float :reb
      t.float :ast
      t.float :to
      t.float :stl
      t.float :blk
      t.float :pf
      t.float :ppg


      #this will add created_at and updated_at fields, both timestamps
      t.timestamps null: false
    end
  end
end