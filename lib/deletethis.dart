import 'package:flutter/material.dart';

const double iconSize = 40;
//const Color mainColor = Color(0xFFC2B7A8);
const Color mainColor = Color(0xFF796A9D);

class QuotationForm extends StatefulWidget {
  @override
  _QuotationFormState createState() => _QuotationFormState();
}

class _QuotationFormState extends State<QuotationForm> {
  final ScrollController _scrollController = ScrollController();

  int currentStep = 0;
  bool complete = false;
  int len = 3;

  bool findValue(int index) {
    return index == currentStep;
  }

  next() {
    currentStep + 1 != len
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() {
      currentStep = step;
      //steps[currentStep].isActive = true;
    });
  }

  List<baby> babies = [];

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        //title: const Text('New Account'),
        title: Icon(
          Icons.person,
          size: iconSize,
          color: currentStep == 0 ? mainColor : Color(0XFFCFC4BB),
        ),
        isActive: currentStep == 0,
        //state: StepState.complete,
        content: Column(
          children: [
            Container(
              child: Scrollbar(
                isAlwaysShown: true,
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  itemCount: babies.length,
                  itemBuilder: (_, i) => babies[i],
                ),
              ),
            ),
            Text("Hello"),
            FloatingActionButton(
              onPressed: addBabies,
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
      Step(
        isActive: currentStep == 1,
        title: Icon(
          Icons.thumb_up,
          size: iconSize,
          color: currentStep == 1 ? mainColor : Color(0XFFCFC4BB),
        ),
        content: Column(
          children: <Widget>[
            Theme(
              data: ThemeData(primaryColor: mainColor),
              child: TextFormField(
                cursorColor: mainColor,
                decoration: InputDecoration(
                  labelText: 'Home Address',
                ),
              ),
            ),
            Theme(
              data: ThemeData(primaryColor: mainColor),
              child: TextFormField(
                cursorColor: mainColor,
                decoration: InputDecoration(
                  labelText: 'Post Code',
                ),
              ),
            ),
          ],
        ),
      ),
      Step(
        //state: StepState.error,
        isActive: currentStep == 2,
        title: Icon(
          Icons.description,
          size: iconSize,
          color: currentStep == 2 ? mainColor : Color(0XFFCFC4BB),
        ),
        content: Column(
          children: <Widget>[
            Theme(
              data: ThemeData(primaryColor: mainColor),
              child: TextFormField(
                cursorColor: mainColor,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            Theme(
              data: ThemeData(primaryColor: mainColor),
              child: TextFormField(
                cursorColor: mainColor,
                decoration: InputDecoration(
                  labelText: 'Gender',
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return Column(
      children: <Widget>[
        Expanded(
          child: Stepper(
            steps: steps,
            currentStep: currentStep,
            onStepContinue: next,
            onStepTapped: (step) => goTo(step),
            onStepCancel: cancel,
            type: StepperType.horizontal,
            controlsBuilder: (BuildContext context,
                {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
              return Row(
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      onPressed: onStepContinue,
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: mainColor,
                    //padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 12, right: 6),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: onStepCancel,
                      child: Text(
                        "Back",
                        //style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Color(0XFFCFC4BB),
                    //padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 12, left: 6),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void addBabies() {
    setState(() {
      babies.add(baby());
    });
  }
}

class baby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'First Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Middle Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Last Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Name in local language',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            obscureText: true,
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
        ),
        Text("Next Fields")
      ],
    );
  }
}