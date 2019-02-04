json.extract! post, :id, :author_id, :content, :title, :except, :status, :comment_status, :ping_status, :slug, :comment_count, :created_at, :updated_at
json.url post_url(post, format: :json)
