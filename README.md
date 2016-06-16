# hubot-uuid

A hubot script that enables your bot to provide a UUID on demand.

See [`src/uuid.coffee`](src/uuid.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-uuid --save`

Then add **hubot-uuid** to your `external-scripts.json`:

```json
["hubot-uuid"]
```

## Sample Interaction

```
user1>> hubot uuid
hubot>> e4438c48-94b1-41a7-ab7e-8a25befa9343
```
