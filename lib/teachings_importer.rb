require_relative '../app/models/teaching'

module TeachingsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/teachings.csv")
    field_names = nil
    Teaching.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          teaching = Teaching.create!(attribute_hash)
        end
      end
    end
  end
end
