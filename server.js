const express = require('express');
const mongoose = require('mongoose');

// Import routes
const userRoutes = require('DevProject/routes/userRoutes'); 
const productRoutes = require('DevProject/routes/productRoutes');
// Initialize app
const app = express();
//Middleware
app.use(express.json());
//Connect to database
mongoose.connect('mongodb://localhost:27017/mydatabase', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
}).then(() => console.log('MongoDB Connected'))
  .catch(err => console.log('Database connection failed:', err));

  //  routes
app.use('/auth', userRoutes); 
app.use('/products', productRoutes);

App.listen(3000, () => {
    Console.log('Server is running on port 3000');
});

