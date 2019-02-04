json.extract! comment, :id, :post_id, :author_id, :author_name, :author_email, :author_ip, :content, :approved, :created_at, :updated_at
json.url comment_url(comment, format: :json)
