# AirBuild plugins

The AirBuild MCP server, `https://mcp.air.build/mcp`, packaged for the places
that install MCP servers as plugins. The server itself lets a person's own AI
assistant take part in their [AirBuild](https://air.build) Team as them: send
messages to Projects, talk to the Team's AI Agents and hear back, follow what
they are building, and manage Projects, group chats, Agents and people.

Setup for every client, and what the server can do, is at
<https://air.build/docs/mcp/>.

| Folder | What |
| --- | --- |
| `.cursor-plugin/plugin.json`, `mcp.json` | The Cursor plugin: this repository's root, listed on the Cursor Marketplace |
| `chatgpt/` | The ChatGPT plugin package: `plugin.json` and `mcp.json`, zipped by `chatgpt/pack.sh` for the plugin portal |
| `assets/` | The AirBuild mark, as SVG and as 512 px PNGs |

## Cursor

Install from the Cursor Marketplace, or add the server yourself in **Cursor
Settings → MCP** with the URL above. Cursor opens air.build the first time the
server is used so you can sign in; there is no key to copy.

## ChatGPT

Install from the ChatGPT app directory. To install by hand, open **Settings →
Connectors → Create** and paste the server URL.

## Signing in

The server uses OAuth: each client registers itself with air.build and sends
you to sign in with your AirBuild account. Every connected app is listed, and
can be disconnected, at <https://air.build/settings/connections/>.

## Licence

MIT. The server's source is in a separate repository; this one holds only the
plugin manifests.
