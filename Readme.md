# docker-nodejs

A nodejs based container that installs `yarn` and project dependencies.

Project MUST expose a **docker_server** operation in the package.json **scripts** object.

```json
{
  "name": "demo-node-project",
  "version": "0.1.0",
  "description": "Example project that uses flyingbuddha/docker-nodejs",
  "main": "server.js",
  "author": "Foo Bar <me@foobar.com>",
  "license": "MIT",
  "devDependencies": {
    "pm2": "^2.4.2"
  },
  "scripts": {
    "docker-server": "pm2-docker process.yml"
  }
}
```
