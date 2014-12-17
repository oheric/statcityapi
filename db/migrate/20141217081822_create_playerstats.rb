class CreatePlayerstats < ActiveRecord::Migration
  def change

    #create table named users, the plural of user, which is our model name
    create_table :playerstats do |t|

      #define the attributes (columns), and give them a type, in this case string 
      t.string :firstname
      t.string :lastname
      t.string :team
      t.string :gp
      t.string :minutes
      t.string :fgm
      t.string :fga
      t.string :fgpct
      t.string :threem
      t.string :threea
      t.string :threepct
      t.string :ftm
      t.string :fta
      t.string :ftpct
      t.string :offreb
      t.string :defreb
      t.string :reb
      t.string :ast
      t.string :to
      t.string :stl
      t.string :blk
      t.string :pf
      t.string :ppg


      #this will add created_at and updated_at fields, both timestamps
      t.timestamps null: false
    end
  end
end