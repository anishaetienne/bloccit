class FavoriteMailer < ApplicationMailer
    default from: "anisha@gmail.com"

    def new_comment(user, post, comment)
 
     # New Headers
     headers["Message-ID"] = "<comments/#{comment.id}@anisha-bloccit.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@anisha-bloccit.example>"
     headers["References"] = "<post/#{post.id}@anisha-bloccit.example>"
 
     @user = user
     @post = post
     @comment = comment
 
     mail(to: user.email, subject: "New comment on #{post.title}")
   end

end
