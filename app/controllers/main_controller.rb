require_relative "../../lib/consts"

class MainController < ApplicationController
  def index
    @mushrooms = Mushroom.filter(filtering_params)
    @attributes = Mushroom.column_names
  end

  private

  def filtering_params
    params.slice(
      :edible, :cap_shape, :cap_surface, :cap_color, :bruises,
      :odor, :gill_attachment, :gill_spacing, :gill_size, :gill_color,
      :stalk_shape, :stalk_root, :stalk_surface_above_ring, :stalk_surface_below_ring,
      :stalk_color_above_ring, :stalk_color_below_ring, :veil_type, :veil_color,
      :ring_number, :ring_type, :spore_print_color, :population, :habitat,
    )
  end
end
