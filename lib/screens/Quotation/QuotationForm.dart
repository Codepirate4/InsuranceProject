import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';
import 'package:insurance_app/screens/Quotation/Model/User.dart';
import 'package:insurance_app/screens/Quotation/ProposerForm.dart';

import 'BenefitForm.dart';
import 'LifeInsuredForm.dart';

const double iconSize = 40;
//const Color mainColor = Color(0xFFC2B7A8);
const Color mainColor = Color(0xFF796A9D);

class QuotationForm extends StatefulWidget {
  @override
  _QuotationFormState createState() => _QuotationFormState();
}

class _QuotationFormState extends State<QuotationForm> {

  User NewUser = User(null,null,null,null,null,null,);

  final ScrollController _scrollController = ScrollController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  void handleRadioValueChange(int val) {}
  List<LifeInsuredElement> LifeInsuredList = [];
  List<Benefit> BenefitList = [];

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        //title: const Text('New Account'),
        title: Icon(
          Icons.person,
          size: iconSize,
          color: currentStep == 0 ? Color1 : Color(0XFFCFC4BB),
        ),
        isActive: currentStep == 0,
        content: ProposerForm(),
      ),
      Step(
        isActive: currentStep == 1,
        title: Icon(
          Icons.thumb_up,
          size: iconSize,
          color: currentStep == 1 ? Color1 : Color(0XFFCFC4BB),
        ),
        content: Column(
          children: [
            Container(

                margin: new EdgeInsets.all(0.0),
                child: Scrollbar(
              isAlwaysShown: false,
              controller: _scrollController,

              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                addAutomaticKeepAlives: true,
                itemCount: LifeInsuredList.length,
                itemBuilder: (_, i) => LifeInsuredList[i],
              ),
            )),
          ],
        ),
      ),
      Step(
        //state: StepState.error,
        isActive: currentStep == 2,
        title: Icon(
          Icons.description,
          size: iconSize,
          color: currentStep == 2 ? Color1 : Color(0XFFCFC4BB),
        ),
        content: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Column(
                       children: [
                         Icon(Icons.person_outline_rounded, color: Color1, size: 30,),Text("Person1", style: TextStyle(fontSize:12),)
                       ],
                     ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Icon(Icons.person_outline_rounded, color: Color1, size: 30,),Text("Person1", style: TextStyle(fontSize:12),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Icon(Icons.person_outline_rounded, color: Color1, size: 30,),Text("Person1", style: TextStyle(fontSize:12),)
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Icon(Icons.person_outline_rounded, color: Color1, size: 30,),Text("Person1", style: TextStyle(fontSize:12),)
                        ],
                      ),
                    ]
                )
            ),
            Scrollbar(
              child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            itemCount: BenefitList.length,
            itemBuilder: (_, i) => BenefitList[i],
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color1,
        child: Icon(Icons.add),
        onPressed: (){
          if (currentStep == 1){
            addLifeInsuredList();
          }
          else if(currentStep==2){
            addBenefitList();
          }

        },
      ),
      appBar: CustomAppBar("Quotation Form"),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color3,
              width: MediaQuery.of(context).size.width,
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
          ),
        ],
      ),
    );
  }

  void addLifeInsuredList() {
    setState(() {
      LifeInsuredList.add(LifeInsuredElement());
    });
  }
  void addBenefitList() {
    setState(() {
      BenefitList.add(Benefit());
    });
  }
}
