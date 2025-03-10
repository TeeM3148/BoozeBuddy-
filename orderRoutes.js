const express = require('express');
const Order = require('DevProject/models/Order');
const Product = require('DevProject/models/Product'); // For calculating totals
const router = express.Router();

// Create a New Order
Router.post('/', async (req, res) => {
    try {
        const { userId, products } = req.body;

        // Calculate total order cost
        let total = 0;
        for (const item of products) {
            const product = await Product.findById(item.productId);
            if (!product) {
                return res.status(404).send({ error: `Product with ID ${item.productId} not found.` });
            }
            Total += product.price * item.quantity;
        }

        // Create and save the order
        const order = new Order({ userId, products, total });
        await order.save();
        Res.status(201).send(order);
    } catch (error) {
        Res.status(400).send({ error: 'Failed to create order.' });
    }
});

// Fetch All Orders for a User
router.get('/:userId', async (req, res) => {
    try {
        const orders = await Order.find({ userId: req.params.userId }).populate('products.productId');
        Res.status(200).send(orders);
    } catch (error) {
        Res.status(500).send({ error: 'Failed to fetch orders.' });
    }
});

// Update Order Status
Router.put('/:id/status', async (req, res) => {
    try {
        const order = await Order.findByIdAndUpdate(
            Req.params.id,
            { status: req.body.status },
            { new: true }
        );
        if (!order) {
            return res.status(404).send({ error: 'Order not found.' });
        }
        res.status(200).send(order);
    } catch (error) {
        Res.status(400).send({ error: 'Failed to update order status.' });
    }
});

module.exports = router;
