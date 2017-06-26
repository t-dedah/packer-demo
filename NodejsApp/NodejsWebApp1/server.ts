import http = require('http');
import os = require('os');
var port = process.env.port || 1337
http.createServer(function (req, res) {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Hello World from new instance ' + os.hostname() + ' with version ' + process.env.appversion);
}).listen(port);
