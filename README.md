# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

# Docker File
well, In this Docker file, we are setting up a containerized environment for a React app. we start by specifying our base image FROM node:21.6.0-alpine, because it of itd lightweight nature.
The WORKDIR command sets the working directory within the container to /app, simplifying upcoming commands.
Copy package.json and package-lock.json to the container
COPY package*.json ./
 RUN npm install for Installing dependencies
COPY . . Copying the local files to the container

RUN npm run build for  Building the React app
Expose port 3000
Expose 3000 Exposing  port 3000 because this command is used to indicate that the React application inside the container will be listening on port 3000.
 Define environment variable
ENV REACT_APP_API_URL=http://localhost:7775 Defining the  environment variable which specifies the API URL for the React application.


CMD ["npm", "start"] giving Command to run the application run when the container starts.
# Executable stuff in ubuntu
To use this Dockerfile, we would firstly,  execute docker build -t your_image_name .like mine's name was w_b_site which bulids our image in this directory  in which t means tag for allowing us to select a name and optionally a tag for image.

Secondly, to build the Docker image and then run the container with docker run -p 7775:3000 your_image_name/ mine was w_b_site to map port 7775 on the host to port 3000 (after this port 7775 which was exposed by us will work as a mirror for port 3000 which was default localhost) in the container. This enables access to the React app at http://localhost:7775   u can run on this site and it will show codin 1 according to what we are asked to do in this assignment.
# My Thoughts doing this assignment (Hola Diogo)
First of all, thank you for providing this assignment as you say that to learn this part some people has to work on this for a year or more so, that was so exciting to learn secondly, like the first part was exciting my real life experience was bad because me and diogo experienced a lot of struggle because of me and my pc. But, after all that hours we fixed everything and i thought that mess was also important in life because i learned a lot of things about thelocalhost, ports and creating and running docker files and containers. we created git ssh key that is a multifunctional key that will help me in future. Moreover, there were a lot git functions i learned after wathcing the videos that diogo advised me to watch, it was a mixed experience sometimes eveyhting felt easy but sometimes frustrating but, in the end still learned something.


# my-react-app
