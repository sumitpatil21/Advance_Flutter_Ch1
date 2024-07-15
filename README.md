# advance_flutter_ch1

## What is Provider?
### The Provider package, created by Remi Rousselet, aims to handle the state as cleanly as possible. In Provider, widgets listen to changes in the state and update as soon as they are notified.
## State management with Provider
### Recall what we discussed about Provider earlier: that widgets listen to changes and notify each other if there is a rebuild. As soon as the state changes, that particular widget rebuilds without affecting other widgets in the tree.

### Three major components make all of this possible: the ChangeNotifier class in Flutter, the ChangeNotifierProvider (primarily used in our sample app), and the Consumer widgets.

### Whatever change in the state observed from the ChangeNotifier class causes the listening widget to rebuild. The Provider package offers different types of providers – listed below are some of them:

### The Provider class takes a value and exposes it, regardless of the value type
### ListenableProvider is the specific provider used for listenable objects. It will listen, then ask widgets depending on it and affected by the state change to rebuild any time the listener is called
### ChangeNotifierProvider is similar to ListenableProvider but for ChangeNotifier objects, and calls ChangeNotifier.dispose automatically when needed
### ValueListenableProvider listens to a ValueListenable and exposes the value
### StreamProvider listens to a stream, exposes the latest value emitted, and asks widgets dependent on the stream to rebuild
### FutureProvider takes a Future class and updates the widgets depending on it when the future is completed 
```dart
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:video_stream/models/RoomModel.dart';

class BookingProvider with ChangeNotifier {
  int totalDays = 0;
  int total = 0;

  void setToatalDays(int days, RoomModel room) {
    totalDays = days;
    total = days * room.price;
    notifyListeners();
  }
}
```
## 1 State Management :

- State management in Flutter is crucial for building responsive and dynamic applications.

## 2 State :

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

## 3 SetState :

- Rebuild the our stateful or stateless widget build method.

## 4 Provider State Management :

- Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application.

## 5 Provider package :


dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version


## 6 ChangeNotifier Class :

- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

## 7 ChangeNotifierProvider Widget :

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

## 8 Consumer Widget :

- It is a type of provider that does not do any fancy work.
- It just calls the provider in a new widget and delegates its build implementation to the builder.


https://github.com/sumitpatil21/Advance_Flutter_Ch1/assets/148967002/8c680c42-7111-43d9-bbd2-ca2014eb5886

## 1.5 Quotes Data Solving with Provider Video

https://github.com/sumitpatil21/Advance_Flutter_Ch1/assets/148967002/56296965-8544-40bf-9fb8-0feb6b8944c9



