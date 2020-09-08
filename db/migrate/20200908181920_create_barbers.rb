class CreateBarbers < ActiveRecord::Migration
  def change

  	create_table :barbers do |t|
      t.text :name

      t.timestamps
    end

    Barber.create :name => "Pavel"
    Barber.create :name => "Roman"
    Barber.create :name => "Maxim"
    Barber.create :name => "Egor"
    Barber.create :name => "Tyskin"

  end
end
