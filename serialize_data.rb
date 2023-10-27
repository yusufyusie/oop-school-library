def serialize_data(objects)
  objects.map { |object| object.to_json}
end
