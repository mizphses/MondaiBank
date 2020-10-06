json.extract! quiz, :id, :name, :subj, :tags, :content, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
