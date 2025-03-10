const express = require('express');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const User = require('DevProject/models/User'); // Import the User model
const router = express.Router();

const SECRET_KEY = 'yourSecretKeyHere';

// Register Endpoint
router.post('/register', async (req, res) => {
    try {
        const hashedPassword = await bcrypt.hash(req.body.password, 10);
        const newUser = new User({
            Username: req.body.username,
            Password: hashedPassword,
        });
        await newUser.save();
        Res.status(201).send({ message: 'User registered successfully!' });
    } catch (error) {
        Res.status(400).send({ error: 'Registration failed. Username might already exist.' });
    }
});

// Login Endpoint
router.post('/login', async (req, res) => {
    try {
        const user = await User.findOne({ username: req.body.username });
        if (!user || !(await bcrypt.compare(req.body.password, user.password))) {
            return res.status(401).send({ error: 'Invalid username or password.' });
        }

        const token = jwt.sign({ id: user._id }, SECRET_KEY, { expiresIn: '1h' });
        res.status(200).send({ message: 'Login successful!', token });
    } catch (error) {
        res.status(500).send({ error: 'An error occurred during login.' });
    }
});

module.exports = router;
