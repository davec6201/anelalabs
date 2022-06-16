'use strict';

const express = require('express');

// Constant
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
	res.send('Hello Dave 2');
});

function handle(signal) {
   console.log(`*^!@4=> Received event: ${signal}`)
}

process.on('SIGHUP', handle)

async function closeGracefully(signal) {
   console.log(`*^!@4=> Received signal to terminate: ${signal}`)
 
   await fastify.close()
   // await db.close() if we have a db connection in this app
   // await other things we should cleanup nicely
   process.kill(process.pid, signal);
}
process.once('SIGINT', closeGracefully)
process.once('SIGTERM', closeGracefully)

app.listen(PORT, HOST);
console.log('Running on http://${HOST}:${PORT}');
