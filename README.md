# intro-k8-dev-nexus
Introduction to Kubernetes for 2018 Dev Nexus



## Running the site locally using Hugo

The Kubernetes documentation is built using the [Hugo](https://gohugo.io) static site generator. See the [official Hugo documentation](https://gohugo.io/getting-started/installing/) for Hugo installation instructions.

> Building and running the site requires the Hugo version specified by the `HUGO_VERSION` environment variable in the [`netlify.toml`](netlify.toml#L9) file.

To run the site locally when you have Hugo installed:

```bash
make serve
```

This will start the local Hugo server on port 1313. Open up your browser to http://localhost:1313 to view the site. As you make changes to the source files, Hugo updates immediately and forces a browser refresh.

## Building the site using Docker

You can build the Kubernetes docs using [Docker](https://docker.com). To get started, make sure that you have Docker running and build the image locally:

```bash
make docker-image
```

Once the `kubernetes-hugo` image has been built locally, you can run the site locally:

```bash
make docker-serve
```

Open up your browser to http://localhost:1313 to view the site.


This site uses the Learning there demo'ed [here](https://learn.netlify.com/en/)
