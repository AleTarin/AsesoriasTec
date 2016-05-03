json.array!(@students) do |student|
  json.extract! student, :id, :student, :lecture_id, :valoration, :body
  json.url student_url(student, format: :json)
end
