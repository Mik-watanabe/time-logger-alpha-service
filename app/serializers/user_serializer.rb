class UserSerializer
  include JSONAPI::Serializer

  set_id :id
  attributes :name
end
