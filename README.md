See <https://github.com/Shopify/bootsnap/issues/436>

Run via:

```terminal
docker run -it --rm -v "$(pwd)":/app --tmpfs /tmp -w /app ruby:3.2.1 /app/docker-entrypoint.sh
```
