This is a custom docker-slave for use with [strider-docker-runner](https://github.com/Strider-CD/strider-docker-runner)

It comes with chromedriver, google-chrome, and xvfb

Since it is customized to the knban project, it is not sent to the Docker registry.

Instead, we use [strider-docker-build](https://github.com/Strider-CD/strider-docker-build) to build the image on each commit.
