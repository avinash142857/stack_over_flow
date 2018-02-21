rails g model User name:string email:string salt:string password_digest:string reputation_score:integer

rails g model Question user:references title:string body:text accepted_answer_id:integer views:integer deleted_at:timestamp

rails g model Answer user:references question:references body:text deleted_at:timestamp

rails g model Comment user:references commentable:references{polymorphic} body:text deleted_at:timestamp

rails g model Badge name:string



rails g model Vote user:references votable:references{polymorphic} score:integer

rails g model Tag name:string deleted_at:timestamp

#correct way to do this
rails g model Recomendation question:references recomendation_question_id:integer

rails g model Session user:references token:string device_id:string expire_at:timestamp

rails g model Revision revisionable:references{polymorphic} suggession_id:integer data:jsonb summary:text 

rails g model Suggession user:references suggestible_type:string suggestible_id:integer data:jsonb summary:text

rails g model Flag user:references flagable:references{polymorphic} reason:text

rails g model Visit user:references question:references




No models required for:

rails generate migration UserBadge user:references badge:references

rails generate migration QuestionTag question:references tag:references



using not null with default

Too many checks reduces performance? (null:false in migrations)

get questions of a tag?