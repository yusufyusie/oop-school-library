def serialize_data(objects)
  objects.map do |object|
    if object.respond_to?(:to_json)
      object.to_json
    else
      puts "Data #{object} cannot be serialized to JSON. Skipping."
      nil
    end
  end
end
