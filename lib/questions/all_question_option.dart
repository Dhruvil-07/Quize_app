import 'package:flutter/material.dart';
import 'package:my_quize/model/question_model.dart';

List<quetion_model> questions =
[

  //1st question
   quetion_model(
     qustion: "Who is king of jungle ? ",
     options:
     [
         "Peacock",
         "Tiger",
         "Monkey",
          "Lion",
     ],
     right_ans: "Lion"
   ),


  //2nd question
  quetion_model(
      qustion: "Who is Indian Cricket Team Caption ? ",
      options:
      [
        "Rohit Sharma",
        "Virat Kohli",
        "M.S. Dhoni",
        "K L Rahul",
      ],
    right_ans: "Rohit Sharma"
  ),

  //3rd question
  quetion_model(
      qustion: "Who is PM of India from last three years? ",
      options:
      [
        "Rahul Gandhi",
        "Narendra Modi",
        "Soniya Gandhi",
        "Arvind Kejriwal",
      ],
      right_ans: "Narendra Modi"
  ),



  //4th question
  quetion_model(
      qustion: " Heritik Roshan Perform Theif Role in Dhoom 2 Movie ? ",
      options:
      [
        "True",
        "False",
      ],
      right_ans: "True"
  ),




  //5th question
  quetion_model(
      qustion: " Who Is A king Of Brids ? ",
      options:
      [
        "Peacock",
        "Parrot",
        "Crow",
        "Sparrow",
      ],
      right_ans: "Peacock"
  ),



];