require("dotenv").config(); // Load environment variables

const express = require("express");
const mongoose = require("mongoose");

// Import routes
const userRoutes = require("./Routes/userRoutes"); // Ensure correct path
const productRoutes = require("./routes/productRoutes"); // Fix folder name if needed

// Initialize app
const app = express();

// Middleware
app.use(express.json());

// MongoDB Connection with Error Handling
const MONGO_URI = process.env.MONGO_URI || "mongodb://127.0.0.1:27017/boozebuddy"; // Ensure correct DB name

mongoose
  .connect(MONGO_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => console.log("✅ MongoDB Connected"))
  .catch((err) => {
    console.error("❌ Database connection failed:", err);
    process.exit(1); // Exit if DB fails
  });

// Routes
app.use("/auth", userRoutes);
app.use("/products", productRoutes);

// Global Error Handler (Prevents Crashes)
app.use((err, req, res, next) => {
  console.error("🔥 Server Error:", err.message);
  res.status(500).json({ error: "Internal Server Error" });
});

// Start the server
const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`🚀 Server running on http://localhost:${PORT}`);
});

// Handle Uncaught Exceptions & Rejections
process.on("uncaughtException", (err) => {
  console.error("🛑 Uncaught Exception:", err);
  process.exit(1);
});

process.on("unhandledRejection", (reason, promise) => {
  console.error("⚠️ Unhandled Rejection at:", promise, "reason:", reason);
});
