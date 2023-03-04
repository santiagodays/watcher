class Api::V1::PostsController < ApiController
  def user_posts
    user = User.find_by(id: current_user[:id])
    if user
      render json: { posts: user.posts }
    else
      render json: { error: "User not found" }, status: :not_found
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Invalid user ID provided" }, status: :unprocessable_entity
  end

  def get_post
    post = Post.find_by(title: current_user[:id])
    if post
      render json: { post: post }
    else
      render json: { error: "Post not found" }, status: :not_found
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Invalid user ID provided" }, status: :unprocessable_entity
  end
end