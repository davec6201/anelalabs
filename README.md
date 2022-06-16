About This Project

Node.js app to run in a Docker container.

Hello world example.

To be updated and built out over time to be the web app that runs the davec.eth website for my personal use.

May also add some features that are designed for it to be ran on a local machine to contain more senstive info/trading functions etc - idea being I don't want to be responsable for holding peoples API keys etc - nore do I want my own on the internet, can't trust someone to do it for you, do it yourself approach.

Do what you want with it.

Install instructions:

Assuming you have Docker already installed.

//Download
Git clone https://github.com/davec6201/dockernode.git

// Change into newly created directory 
cd dockernode

// Build the docker image - replacing daveceth with your own username/handle
docker build . -t daveceth/node_app --secret id=npmrc,src=.npmrc






