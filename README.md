
## Api Fetcha  📗📗
https://github.com/user-attachments/assets/b972b041-ef4f-4e5e-a1ff-302829050952


https://github.com/user-attachments/assets/6708b871-e6db-4307-80cd-853360a49606

# advance_flutter_ch1

## What is Provider?
#### The Provider package, created by Remi Rousselet, aims to handle the state as cleanly as possible. In Provider, widgets listen to changes in the state and update as soon as they are notified.
### State management with Provider
- ### Recall what we discussed about Provider earlier: that widgets listen to changes and notify each other if there is a rebuild. As soon as the state changes, that particular widget rebuilds without affecting other widgets in the tree.

- #### Three major components make all of this possible: the ChangeNotifier class in Flutter, the ChangeNotifierProvider (primarily used in our sample app), and the Consumer widgets.

- #### Whatever change in the state observed from the ChangeNotifier class causes the listening widget to rebuild. The Provider package offers different types of providers – listed below are some of them:

- #### The Provider class takes a value and exposes it, regardless of the value type
- #### ListenableProvider is the specific provider used for listenable objects. It will listen, then ask widgets depending on it and affected by the state change to rebuild any time the listener is called
- #### ChangeNotifierProvider is similar to ListenableProvider but for ChangeNotifier objects, and calls ChangeNotifier.dispose automatically when needed
- #### ValueListenableProvider listens to a ValueListenable and exposes the value
- #### StreamProvider listens to a stream, exposes the latest value emitted, and asks widgets 


dependent on the stream to rebuild
- #### FutureProvider takes a Future class and updates the widgets depending on it when the future is completed 
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
## Provider Tree
#### 1 State Management :

- State management in Flutter is crucial for building responsive and dynamic applications.

### 2 State :

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

### 3 SetState :

- Rebuild the our stateful or stateless widget build method.

### 4 Provider State Management :

- Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application.

### 5 Provider package :


dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version


### 6 ChangeNotifier Class :

- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

### 7 ChangeNotifierProvider Widget :

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

### 8 Consumer Widget :

- It is a type of provider that does not do any fancy work.
- It just calls the provider in a new widget and delegates its build implementation to the builder.

 # 1.1 Switch Dark Theme to Light Theme

https://github.com/sumitpatil21/Advance_Flutter_Ch1/assets/148967002/8c680c42-7111-43d9-bbd2-ca2014eb5886



## 1.5 Quotes Data Solving with Provider Video

https://github.com/sumitpatil21/Advance_Flutter_Ch1/assets/148967002/56296965-8544-40bf-9fb8-0feb6b8944c9

## Contact Us Page With Interaction

```dart
 void phone ()
  {
    Uri uri =Uri.parse("tel:+91 9316925877");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void sms ()
  {
    Uri uri =Uri.parse("sms:+91 9316925877");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void github()
  {
    Uri uri =Uri.parse("https://github.com/sumitpatil21");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void instagram ()
  {
    Uri uri =Uri.parse("https://www.instagram.com/");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void Mail ()
  {
    Uri uri =Uri.parse("mailto:namesam927@gmail.com");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void Linkdin ()
  {
    Uri uri =Uri.parse("https://www.linkedin.com/in/sumit-patil-4b7a63311/");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
```

### Stepper Video

## Properties of Stepper Widget :

- steps : List of Step objects that define each individual step in the stepper. Each Step typically contains a title and content.

- currentStep : Integer that represents the current active step. This is used to control which step is currently displayed and allows users to navigate forward and backward through the steps.

- onStepContinue : Callback function that is called when the user taps the "Continue" button on an active step. You typically increment the currentStep in this callback to move forward.

- onStepCancel : Callback function that is called when the user taps the "Cancel" button on an active step. You typically decrement the currentStep in this callback to move backward.

- onStepTapped : Callback function that is called when the user taps on a step's header. It is useful for handling custom behavior when a step is directly selected.

- controlsBuilder : Optional builder function to customize the appearance of the buttons (e.g., "Next", "Back").

- type : Enum that specifies the type of stepper: StepperType.vertical for a vertical layout and StepperType.horizontal (default) for a horizontal layout.


https://github.com/user-attachments/assets/ee5f5b1c-705d-41b3-80d2-0a9ada86b038



https://github.com/user-attachments/assets/973605ac-795f-4c26-a18f-ec7dea528d1e

```dart
 Future<void> Navset(BuildContext context) async {
    if (_authis) {
      final bool canAuthenticat = await auth.canCheckBiometrics;
      if (canAuthenticat) {
        final bool didauth = await auth.authenticate(
          localizedReason: "Please enter pass",
          options: AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        _authis = didauth;
      }
      if(_authis)
        {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HideFolderPage(),
          ));
        }
      else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Password is wrong")));
        _authis=true;
      }

    }
    notifyListeners();
  }
```


https://github.com/user-attachments/assets/a0df0366-a353-4182-a3eb-19690adb2473

### Bhagwat Gita App Video➡️

https://github.com/user-attachments/assets/962aa914-8ae8-4239-b981-a819b81b382b




