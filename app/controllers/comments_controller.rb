class CommentsController < ApplicationController

    def create
        # Find the post by the id in the address
        @post = Post.find(params[:post_id])
        # Creates a comment the belongs to the post below
        @comment = @post.comments.create(params[:comment].permit(:name, :body))
        
        # Redirect to the post
        redirect_to post_path(@post)
    end

    # Function
    def destroy
        # Find the post by the post id on the address
        @post = Post.find(params[:post_id])
        # Find the comment inside the post pre find by the comment id
        @comment = @post.comments.find(params[:id])

        # Destroy the comment
        @comment.destroy 

        # Redirect to post
        redirect_to(@post)
    end
end
