# Python server

## Running js modules locally

Browsers will block loading js module files locally for CORS reasons. You need to run a local
python server to open the built HTML file.

1. `cd dist` (or the build output directory)
2. `python3 -m http.server`
3. It should run at localhost:8000
