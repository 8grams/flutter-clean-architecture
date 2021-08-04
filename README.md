# Flutter Clean Architecture

This repository is used for demonstrating how to implement Clean Architecture approach on Flutter development.

The architecture of this application is heavily inspired by Antonio Leiva's [idea](https://antonioleiva.com/clean-architecture-android/) about pragmatic approach to the **Android Clean Architecture**, with a little *twist*, including leverage *Dependency Injection*, the implementation of *Repository Pattern*, and using *Reactive Pattern* to handle any asynchronous result. 

![image](https://i.ibb.co/kXWdz5Q/clean-architecture-own-layers.png)

It divides the application into 4 modules: `app, data, domain,` and `usecase` as described in the structure below:

```
+ app
  + infrastructures
  + api (API service)
  + di (Component and modules for Dependency Injection)
    + components
    + modules
  + persistences (API or DB persistences)
  + ui
    + pages (Screen files)
    + res
  + main.dart
 
+ data
  + exception (Exception classes)
  + infrastructures (Persistence/Repository interfaces)
  + payload
    + api (API Payload)
    + db (DB Payload)	
    + contracts (Payloads Interfaces)
  + persistences
    + mappers (Domain mapper)
    + repositories (Repository Interfaces)
        
+ domain
  + entities
   	+ user.dart
 
+ use_cases
  + user
    + get_users.kt
```

## Usage

Create an `.env` file in the root of the project. You can copy it from `.env.example`. Put appropriate value in it and run the application.

	~$ flutter run lib/app/main.dart --verbose


## Important Folders


### infrastructures (app)

This folder contains any class, usually class for library or service implementation. It also a place for component & modules for Injector, the beautiful and simple Dependency Injection.

### payload (data)

It contains many data classes related to the request/response from API or local DB. Anytime you wanna add new endpoint or create new Room entities, you will start from this folder

### persistences (data)

This folder contains any necessary files related to persistence. Usually you will maintain two main data sources: API and local db. It consists of 3 folders. First is `contracts`, it holds interfaces for persistence. Every persistence should implements the interfaces there. Second is `mappers`, contains really important classes since its responsibility is ti map data from any data sources to domain. The last is `repositories`, basically it is an additional layer above persistence. Repository is not just a class that execute persistence class, but it also does another important job, for example usually, run mapper to convert response from data source to domain

## Notable Libraries

This small application depends on some notables libraries in order to achieve clean architecture approach.

### Dio

[Dio](https://pub.dev/packages/dio) is the backbone of all API Request implementation in this application.

### Injector

This application really leverages the power of dependency injection. Almost no class is created manually, instead, we create it on Injector Modules. So, it's very easy and expressive to get an object of a class. [Injector](https://pub.dev/packages/injector) is very simple and small Dependency Injection written in Dart.

### DotEnv

It's very easy to define and load environment variable in Flutter by using [DotEnv](https://pub.dev/packages/flutter_dotenv).

### Flutter Clean Architecture Lib

Probably the most common used library in this application. This [library](https://pub.dev/packages/flutter_clean_architecture) make all seems easy. It's very helpful to separate view with logic by creating separate file for view, controller, and presenter. It's also very useful when creating use case classes.

