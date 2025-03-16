const mongoose = require('mongoose');

const orderSchema = new mongoose.Schema({
    userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
    products: [
        {
            productId: { type: mongoose.Schema.Types.ObjectId, ref: 'Product', required: true },
            quantity: { type: Number, required: true },
        }
    ],
    Total: { type: Number, required: true },
    Status: { type: String, default: 'Pending' }, // e.g., Pending, Completed
    createdAt: { type: Date, default: Date.now }
});

const Order = mongoose.model('Order', orderSchema);
Module.exports = Order;
