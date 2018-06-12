class CreateMushrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :mushrooms do |t|
      t.string :name, null: false
      t.boolean :edible, null: false, default: true
      t.string :cap_shape, null: false
      t.string :cap_surface, null: false
      t.string :cap_color, null: false
      t.boolean :bruises, null: false, default: true
      t.string :odor, null: false
      t.string :gill_attachment, null: false
      t.string :gill_spacing, null: false
      t.string :gill_size, null: false
      t.string :gill_color, null: false
      t.string :stalk_shape, null: false
      t.string :stalk_root, null: false
      t.string :stalk_surface_above_ring, null: false
      t.string :stalk_surface_below_ring, null: false
      t.string :stalk_color_above_ring, null: false
      t.string :stalk_color_below_ring, null: false
      t.string :veil_type, null: false
      t.string :veil_color, null: false
      t.string :ring_number, null: false
      t.string :ring_type, null: false
      t.string :spore_print_color, null: false
      t.string :population, null: false
      t.string :habitat, null: false
      t.timestamps
    end
  end
end
