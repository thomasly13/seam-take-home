class CommentsController < ApplicationController

    # Returns all the comments from a specific post
    def index 
        @post = Post.find_by(id:params[:post_id])
        
        if @post 
            @comments = @post.comments 
            
            render json: @comments 
        else
            # Returns error if post isn't found
            render json: {errors: 'Post not found'}, status: 422    
        end
    end

    # Creates a comment for a post and returns the created comment
    def create 
        @comment = Comment.new(comment_params)
        @comment.post_id = params["post_id"].to_i

        if @comment.save 
            render :create 
        else
            # Returns error if comment validations fail
            render json: { errors: @comment.errors }, status: 444
        end 
    
    end
    

    private

    def comment_params
        params.require(:comment).permit(:author, :content)
    end

end
