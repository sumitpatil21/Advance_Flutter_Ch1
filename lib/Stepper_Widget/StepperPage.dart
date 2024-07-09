import 'package:flutter/material.dart';

class Stepperpage extends StatefulWidget {
  const Stepperpage({super.key});

  @override
  State<Stepperpage> createState() => _StepperpageState();
}

class _StepperpageState extends State<Stepperpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stepper(
            connectorColor: WidgetStatePropertyAll(Colors.deepPurple),
            connectorThickness: 3,
            currentStep: cur,
            onStepCancel: () {
              setState(() {
                if (cur> 0) {
                  cur--;
                  x--;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (cur >= 0) {
                  cur++;
                  x++;
                }
              });
            },
            onStepTapped: (value) {
              setState(() {});
              cur = value;
            },
            steps: [
              Step(
                title: Text("Account"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "Account",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                  ),
                ),
                state: (x==1)?StepState.complete:StepState.indexed,
              ),
              Step(
                title: Text("Address"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "Address",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                  ),
                ),
                state: (x==2)?StepState.complete:StepState.indexed,
              ),
              Step(
                state: (x==3)?StepState.complete:StepState.indexed,
                title: Text("Mobile Number"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "Mobile No.",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black, strokeAlign: 2, width: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

int cur = 0;
int x = 0;
