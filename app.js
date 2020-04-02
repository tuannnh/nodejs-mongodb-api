const express = require('express');

const app = express();
const mongoose = require('mongoose');
require('dotenv/config');
const cors = require('cors');

//Middlewares
// Add logic here
app.use(cors())
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//Import Routes
const postsRoute = require('./routes/posts');

app.use('/posts', postsRoute)

//This is get method for http request, app.post to use post method of http request
app.get('/', (req, res) => {
    res.send('Hello we are running in CI/CD')
});

app.get('/posts', (req, res) => {
    res.send('Hello we are running in posts route')
});

//Connect to  db
mongoose.connect(process.env.MONGODB_CONNECTION,
{ useUnifiedTopology: true, useNewUrlParser: true},
() => console.log('Connected to MongoDB')).
  catch(error => console.log(error));

// How to we start listening to the server
app.listen(process.env.PORT, () => console.log('App is listening on port ' + process.env.PORT +' by ' + process.env.USER))
