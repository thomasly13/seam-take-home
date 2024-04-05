##### Project Setup

The setup steps expect the following tools installed on the system.

- Github
- Ruby [3.1.1]
- Rails [7.0.8]
- PostgreSQL 



##### 1. Clone the repository

```bash
git clone https://github.com/thomasly13/seam-take-home
```

##### 2. Install Gems

```bash
bundle install
```

##### 3. Set up Database

```bash
sudo service postgresql start
rails db:migrate 
```

##### 4. Start the rails server

```bash
rails s
```

 
## API Endpoints

### `posts`
+ `GET /posts` - returns all blog posts
+ `GET /posts/{id}` - returns ID specific blog post
+ `POST /posts` - create a blog post
+ `PUT /posts/{id}` - update an existing blog post by its ID
+ `DELETE /posts/{id}` - delete a blog post by its ID

### `comments`
+ `GET /posts/{postId}/comments` - returns all comments for a ID specific blog post
+ `POST /posts/{postId}/comments` - create a new comment for a ID specific blog post


