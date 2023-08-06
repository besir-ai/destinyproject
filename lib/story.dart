//TODO: Step 2 - Create a new class called Story.

//TODO: Step 3 - Create 3 properties for this class, A.
//TODO:storyTitle to store the story text. B.
//TODO:choice1 to store the text for choice 1,
// TODO:C. choice2 to store the text for choice 2.

//TODO: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
import 'package:destinyproject/main.dart';
import 'package:flutter/material.dart';
class Story{
 final String choice1;
 final String StoryTitle;
 final String choice2;

  Story(this.choice1,this.choice2,this.StoryTitle);


  void main(){
    runApp(MyApp());
  }

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    Story story=Story('The Advanture Begins', 'Go left', 'Go right');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Story App'),
        ),
      ),
    );
  }
}
