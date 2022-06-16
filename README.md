## Anela Labs

### About This Project

Website to host Anela Labs homepage

### Install instructions:

Assuming you have Docker already installed, run the following commands in a terminal (Should be ok on Windows/Linux/MacOS)

- Download

`git clone https://github.com/davec6201/anelalabs.git`

- Change into newly created directory 

`cd anelalabs`

- Build the docker image - replacing daveceth with your own username/handle

`docker build . -t daveceth/anelalabs --secret id=npmrc,src=.npmrc`

- Run the image - 8000 internal docker port exposed to outside port 49160.

`docker run -p 49160:8080 -d daveceth/anelalabs`

- You should now be able to visit this locally at http://localhost:49160





