# terser-webpack-plugin-extract-comments-issue

Run `npm test` and check the `output` folder. Folders are named by timestamp of
build. The first folder has the the comment line, while other folders to not
even though they have the same chunkhash. This is because the cache under
`node_modules/.cache/terser-webpack-plugin` caches the content without comments.
