import 'package:flutter/material.dart';

import 'story.dart';

/// StoryBrain contains a list of Story objects
class StoryBrain {
  ///used to track the current Story we are at in the _storyData list
  int _storyNumber = 0;
  final List<Story> _storyData = <Story>[
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of  '
            'nowhere with no cell phone reception. You decide to  '
            'hitchhike. A rusty pickup truck rumbles to a stop next to '
            'you.  A man with a wide brimmed hat with soulless eyes opens'
            '  the passenger door for you and asks: "Need a ride, boy?".',
        choice1: "I'll hop in. Thanks for the help!",
        choice2: "Better ask him if he's a murderer first."),
    Story(
        storyTitle: 'He nods slowly, un-phased by the question.',
        choice1: "At least he's honest. I'll climb in.",
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his '
            'relationship with his mother. He gets angrier and angrier by the '
            'minute. He asks you to open the glovebox. Inside you find a '
            'bloody knife, two severed fingers, and a cassette tape of Elton '
            'John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: "It's him or me! You take the knife and stab him."),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the '
            'second leading cause of accidental death for most adult age '
            'groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged '
            'rocks below you reflect on the dubious wisdom of stabbing someone '
            'while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel '
            'the love tonight". He drops you off at the next town. Before you '
            'go he asks you if you know any good places to dump bodies. You '
            'reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  ///Returns the text for the first storyTitle from _storyData
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  ///Returns the text for the first choice1 from _storyData
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  ///Returns the text for the first choice2 from _storyData
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  ///Takes us to the next story based on the choice number
  void nextStory({@required int choiceNumber}) {
    if (_storyNumber == 0) {
      choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 1;
    } else if (_storyNumber == 1) {
      choiceNumber == 1 ? _storyNumber = 2 : _storyNumber = 3;
    } else if (_storyNumber == 2) {
      choiceNumber == 1 ? _storyNumber = 5 : _storyNumber = 4;
    } else {
      restart();
    }
  }

  /// Resets the storyNumber to zero.
  void restart() {
    _storyNumber = 0;
  }

  /// Returns true or false based on storyNumber telling us if the button
  /// should be visible
  bool buttonShouldBeVisible() {
    return _storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2;
  }
}
