# <em> Ozymandias Book Reviews Server </em>

## Sinatra Server for Ozymandias Book Reviews Web App 
<br>

### This project uses the Sinatra ActiveRecord gem, A rack web server and Sinatra to create a server for a the react client.
<br>

#### The database used is sqlite3 and the associations and relationships are made using ActiveRecord

#### The application has three models : <li> A Book </li> <li> An Author </li> <li>A Review </li>
<br>

#### A book belongs to an author and an author can have many books, a review belongs to a book. 
<br>

#### The API, provided by Sinatra responds to the following Routes 
<ol> 
<li> /authors : which responds with a list of all the authors in the database </li>
<li> /books   : which responds with a list of all the books in the database </li>
<li> /reviews : which responds with a list of all the reviews in the database </li>
<li> /books/:id :  which will find the book with the associated id in the databse </li>
<li> /reviews/:id : which will find the review with the provide id in the database </li>
</ol>
<br>

#### The app is setup to communicate with a React frontend application that is hosted here https://github.com/JohnstoneDev/ozymandias_client/
<br>

#### To see the associated CRUD methods, fork and clone both repositories, and run `npm install` to install the dependencies for the client application and `bundle install` or `bundle` to install the dependencies for the server.
<br>

#### The server can be started by running `bundle exec rake server` that will start the server on `[port 9292]` on your machine, it is required to run on this port because the API calls in the frontend respond to that. 
<br>

#### After starting the server the react application can be started by running `npm start`
<br>

#### The React Application has the interface to communicate with all the relevant routes in the server, and the details can be found on its README here : <br>https://github.com/JohnstoneDev/ozymandias_client/blob/main/README.md
<br>

#### A live link for the application is being worked on and will  be added to the project once done. 
<br>