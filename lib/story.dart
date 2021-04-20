import 'package:flutter/material.dart';

///Story holds the current story text as well as the choice1 and choice2 text
class Story {
  ///Constructor for Story object
  Story({this.storyTitle, this.choice1, this.choice2});

  ///Stores the current story text
  String storyTitle;

  ///Stores the story text for choice1
  String choice1;

  ///Stores the story text for choice2
  String choice2;
}
