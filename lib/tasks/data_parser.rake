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
    end
    FileUtils.rm_f(file_path)
  end
end
