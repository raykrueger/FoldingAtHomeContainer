# FoldingAtHomeContainer

This container will run the Folding@Home client in a Docker container, on a GPU.

To run this container on your Nvidia GPU you will need the [NVIDIA Container
Toolkit](https://github.com/NVIDIA/nvidia-docker) installed alongside your
Docker engine.

## Scope

My goal for this project is to make it as easily as possible for users to run
Folding@Home on a GPU. My initial effort will be focused on making this simple
to run on Amazon ECS. However, this container should run equally well on any
conatainer platform.

Secondly, this container should be as simple and obvious as possible. As of now
this means a barely configured FAHClient and NVIDIA GPUs only. There is no
support for teams, passkeys, or any other inputs really.

## Non-Goals

I am not working making this container infinitely customizable. If you want to
customize the container to add passkeys or teams, or any other support; feel
free to fork or launch a new container _FROM raykrueger/folding-at-home_ in
your own Dockerfile, and copying in your own config.xml.
