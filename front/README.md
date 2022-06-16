# Seal Fighter Front-end

This directory contains the source code of a basic [React](https://reactjs.org/) application designed for this technical test.

## Set up your environment

### Install Node and npm

Make sure you have [Node](https://nodejs.org/en/) and npm or yarn installed on your environment.
We advise you to use a Version manager as [nvm](https://github.com/nvm-sh/nvm) and use Node >= 16.

### Set up the project

Install the dependencies by running the following command on the `/front` directory:

```bash
yarn install
```

## Run the Front-end

You can now run the front-end application (it will default to the port `3000`)

```bash
yarn start
```

# Development

We have created a simple CI that run tests and runs a linter to check the code quality and functionality.

## Run the linter

```bash
# Without autocorrect
yarn lint

# With autocorrect
yarn lint:fix
```

## Run the tests

```bash
# Cypress run
yarn test
```

```bash
# Cypress open
yarn test:watch
```
