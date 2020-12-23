const awsLambdaFastify = require('aws-lambda-fastify');
const fastify = require('fastify');
const app = fastify();


app.get('/', (request, reply) => reply.send({ description: 'node:fastify' }));
app.get('/ping', (request, reply) => reply.send({ ping: 'pong' }));
app.post('/posts', (request, reply) => reply.code(201).send(request.body));

if (require.main === module) {
    app.listen(3000, (err) => {
        if (err) console.error(err)
        console.log('server listening on 3000')
    })
} else {
    exports.handler = awsLambdaFastify(app)
}
