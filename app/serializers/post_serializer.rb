class PostSerializer
  include JSONAPI::Serializer

  set_id :id
  attributes :title, :description, :content, :status, :created_at, :updated_at
end
