## davec.eth

### About This Project

Node.js app to run in a Docker container and provide a quick Hello world example.

To be updated and built out over time to be the web app that runs the davec.eth website and for my own local use.

Do what you want with it.

### Install instructions:

Assuming you have Docker already installed, run the following commands in a terminal (Should be ok on Windows/Linux/MacOS)

- Download

`git clone https://github.com/davec6201/dockernode.git`

- Change into newly created directory 

`cd dockernode`

- Build the docker image - replacing daveceth with your own username/handle

`docker build . -t daveceth/node_app --secret id=npmrc,src=.npmrc`

- Run the image - 8000 internal docker port exposed to outside port 49160.

`docker run -p 49160:8080 -d daveceth/node_app`

- You should now be able to visit this locally at http://localhost:49160





