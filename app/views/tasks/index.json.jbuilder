json.array!(@tasks) do |task|
  json.extract! task, :id, :list_id, :title, :notes, :due, :is_complete
  json.url task_url(task, format: :json)
end
