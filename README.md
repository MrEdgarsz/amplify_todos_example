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
