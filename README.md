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

https://github.com/sumitpatil21/Advance_Flutter_Ch1/assets/148967002/8c680c42-7111-43d9-bbd2-ca2014eb5886

