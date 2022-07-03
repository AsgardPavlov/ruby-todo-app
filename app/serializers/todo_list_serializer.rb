class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :todos
end

class TodoListProjectsSerializer < ActiveModel::Serializer
    attributes :id, :title
end
