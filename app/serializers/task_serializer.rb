class TaskSerializer < ActiveModel::Serializer
  attributes :id, :deadline, :name
end
