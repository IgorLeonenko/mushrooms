require "faker"
require_relative "../consts"

namespace :data_parser do
  desc "Prepare data for seeding database"

  task parse: :environment do
    link = "https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"
    file_path = Rails.root.join("public", "mashrooms.txt")
    %x(wget --output-document='public/mashrooms.txt' #{link})
    File.open(file_path, "r").each do |line|
      line = line.tr("\n","").split(",")
      Mushroom.create!(
        name: Faker::Lorem.word,
        edible: EDIBLE[line[0].to_sym],
        cap_shape: CAP_SHAPE[line[1].to_sym],
        cap_surface: CAP_SURFASE[line[2].to_sym],
        cap_color: CAP_COLOR[line[3].to_sym],
        bruises: BRUISES[line[4].to_sym],
        odor: ODOR[line[5].to_sym],
        gill_attachment: GILL_ATTACHMENT[line[6].to_sym],
        gill_spacing: GILL_SPACING[line[7].to_sym],
        gill_size: GILL_SIZE[line[8].to_sym],
        gill_color: GILL_COLOR[line[9].to_sym],
        stalk_shape: STALK_SHAPE[line[10].to_sym],
        stalk_root: STALK_ROOT[line[11].to_sym],
        stalk_surface_above_ring: STALK_SURFACE_ABOVE_RING[line[12].to_sym],
        stalk_surface_below_ring: STALK_SURFACE_BELOW_RING[line[13].to_sym],
        stalk_color_above_ring: STALK_COLOR_ABOVE_RING[line[14].to_sym],
        stalk_color_below_ring: STALK_COLOR_BELOW_RING[line[15].to_sym],
        veil_type: VEIL_TYPE[line[16].to_sym],
        veil_color: VEIL_COLOR[line[17].to_sym],
        ring_number: RING_NUMBER[line[18].to_sym],
        ring_type: RING_TYPE[line[19].to_sym],
        spore_print_color: SPORE_PRINT_COLOR[line[20].to_sym],
        population: POPULATION[line[21].to_sym],
        habitat: HABITAT[line[22].to_sym],
      )
      print "."
    end
    puts "seeding dataset done!"
    FileUtils.rm_f(file_path)
  end
end
