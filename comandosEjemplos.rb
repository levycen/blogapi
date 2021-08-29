rails g model user email:string name:string auth_token:string 

rails g model post title:string content:string published:boolean user:reference
rails destroy model post
rails g model post title:string content:string published:boolean user:references
rails db:migrate