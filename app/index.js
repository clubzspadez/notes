/**
 * !Main file for API
 *
 *
 *
 *
 *
 */

//  Dependencies
const http = require("http");
const url = require("url");

// Port to listen on
const port = 3000;

// create server
const server = http.createServer((req, res) => {
  // Get URL and parse it
  // using url library, use the parse method on the req objects URL
  // second param calls 'querystring' module on url to parse it as an object
  const parsedUrl = url.parse(req.url, true);

  // Get path
  const path = parsedUrl.pathname;
  // return path name without '/' and as string
  const trimmedPath = path.replace(/^\/+|\/+$/g, "");

  // receive method
  const method = req.method.toLowerCase();

  const queryStringObject = parsedUrl.query;

  // send the response
  res.end("Response is sent");

  // log the request path
  console.log(
    `The current path is ${trimmedPath} and ${method} and `,
    queryStringObject
  );
});

// start server, specify port

server.listen(port, () => {
  console.log(`Server listening on ${port}`);
});
