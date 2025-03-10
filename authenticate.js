const jwt = require('jsonwebtoken');

const authenticate = (req, res, next) => {
    const token = req.headers.authorization?.split('')[1];
    if (!token) {
        return res.status(401).send({ error: 'Access denied. No token provided.' });
    }

    try {
        const verified = jwt.verify(token, 'yourSecretKeyHere');
        req.user = verified;
        Next();
    } catch (error) {
        res.status(400).send({ error: 'Invalid token.' });
    }
};

Module.exports = authenticate;
