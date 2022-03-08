# Amplify Todo Example

An example that shows how you can create an flutter application with offline-first approach using Amazon Amplify.

# Getting Started

this project uses [freezed](https://pub.dev/packages/freezed) to generate Bloc events and state so please run:

`flutter pub run build_runner build --delete-conflicting-outputs`

to generate all necessery models.

# Application Overview

This app is simple todo app that allows three stages of todo progress `Todo`, `In Progress` and `Finished`. You can drag and drop todos from each column to another one and you can click on todo to mark it as either `Finished` or `Todo` depending on it current state.

## Project Strucutre

- `lib/splash_page` - provides an easy way to await features needed on app startup.

- `lib/todo` - contains all files regarding main feature of the app.

# Configuring Amplify

To configure this application to work with amplify you will need to follow this steps

1. create an amplify project
2. Inside amplify project create and configure `TodoModel` and `TodoStatus` as described in the next section

3. Publish models and wait for deployment
4. [Install and configure Amplify CLI](https://docs.amplify.aws/cli/start/install/)
5. From inside of your project folder run
   `amplify pull --appId <appID> --envName <envName>` providing your appID and envName
6. run `amplify push`
7. fix import errors and start your application

## Amplify Models

```
TodoModel
----------
String id
String title
String description
TodoStatus status (Enum)
```

```
TodoStatus (Enum)
-----------
Options:
- todo
- inprogress
- finished
```
