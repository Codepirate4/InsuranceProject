import 'package:flutter/material.dart';

class User {
  String FirstName;
  String MiddleName;
  String LastName;
  String NameInLocalLanguage;
  int Gender;
  String JobTitle;

  User(this.FirstName, this.MiddleName, this.LastName, this.NameInLocalLanguage,
      this.Gender, this.JobTitle);

  void display(){
    print(this.FirstName + this.MiddleName+ this.LastName+ this.NameInLocalLanguage +
        this.Gender.toString() + this.JobTitle);
  }
}

class Proposer {}
