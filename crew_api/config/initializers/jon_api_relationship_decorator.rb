FastJsonapi::Relationship.class_eval do
  # always sets the pluralized record_type value to type
  def id_hash(id, record_type, default_return=false)
    pluralized_type = record_type.to_s&.pluralize
    if id.present?
      { id: id.to_s, type: pluralized_type }
    else
      default_return ? { id: nil, type: pluralized_type } : nil
    end
  end
end