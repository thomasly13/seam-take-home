class PostsController < ApplicationController
    
    # Returns all post in an array
    def index
        @posts = Post.all 
        
        render json: @posts
    end

    # Returns a specific post
    def show 
        @post = Post.find_by(id: params[:id])

        if @post 
            render json: @post
        else
            # Returns error if post isn't found
            render json: {errors: 'Post not found'}, status: 422
        end
    end

    # Creates post and returns the created post
    def create 
        @post = Post.new(post_params)
        
        if @post.save 
            render :create 
        else
            # Returns error if post validations fail
            render json: { errors: @post.errors }, status: 444
        end
    end

    # Updates existing post, and returns updated version
    def update 
        @post = Post.find_by(id: params[:id])

        if @post 
            if @post.update(post_params)
                render :update 
            else
                # Returns errors if validations fail
                render json: {errors: @post.errors }, status: 444 
            end
        else
            # Returns error if post isn't found
            render json: {errors: 'Post not found'}, status: 422
        end
    end 

    # Deletes existing post, and returns success message
    def destroy
        @post = Post.find_by(id: params[:id])

        if @post 
            @post.destroy

            if @post.destroyed?
                render json: 'Success'
            else
                # Returns error if post could not be deleted
                render json: {errors: @post.errors}, status: 444
            end 
        else
            # Returns error if post isn't found
            render json: {errors: 'Post not found'}, status: 422
        end 
    end 

    private

    def post_params
        params.require(:post).permit(:author, :content, :title)
    end

end
