const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Home route
app.get('/', (req, res) => {
  res.send('🚀 Hello from AWS DevOps Demo Applications from Mohammed Faisal Iqbal !');
});

// Healthcheck route (useful for load balancer / k8s)
app.get('/health', (req, res) => {
  res.json({ status: 'OK', message: 'App is healthy ✅' });
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
