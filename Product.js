const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
    Name: { type: String, required: true },
    Price: { type: Number, required: true },
    Stock: { type: Number, required: true },
    Description: { type: String },
});

const Product = mongoose.model('Product', productSchema);
Module.exports = Product;
