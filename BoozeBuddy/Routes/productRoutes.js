const express = require('express');
const Product = require('../models/Product'); // Use correct relative path
 // Import the Product model
const router = express.Router();

// Create a New Product
router.post('/', async (req, res) => {
    try {
        const product = new Product(req.body);
        await product.save();
        Res.status(201).send(product);
    } catch (error) {
        Res.status(400).send({ error: 'Failed to create product.' });
    }
});

// Fetch All Products
router.get('/', async (req, res) => {
    try {
        const products = await Product.find();
        Res.status(200).send(products);
    } catch (error) {
        Res.status(500).send({ error: 'Failed to fetch products.' });
    }
});

// Update a Product
router.put('/:id', async (req, res) => {
    try {
        const product = await Product.findByIdAndUpdate(req.params.id, req.body, { new: true });
        if (!product) {
            return res.status(404).send({ error: 'Product not found.' });
        }
        res.status(200).send(product);
    } catch (error) {
        Res.status(400).send({ error: 'Failed to update product.' });
    }
});
// Delete a Product
router.delete('/:id', async (req, res) => {
    try {
        const product = await Product.findByIdAndDelete(req.params.id);
        if (!product) {
            return res.status(404).send({ error: 'Product not found.' });
        }
        Res.status(200).send({ message: 'Product deleted successfully.' });
    } catch (error) {
        Res.status(400).send({ error: 'Failed to delete product.' });
    }
});

module.exports = router;
