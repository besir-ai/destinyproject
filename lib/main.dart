import 'package:flutter/material.dart';
import 'story_brain.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    theme: ThemeData.dark(),
    home: StoryPage(),
      );

  }
}
class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    StoryBrain storyBrain=StoryBrain(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(flex: 12,
              child: Center(
                child: Text(
                  //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.

                  storyBrain.getstory(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              ),

              Expanded(
                flex: 3,
                child: ElevatedButton(
                onPressed: (){
                  //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                  setState(() {
                    storyBrain.nextStory(1);

                  });
                },

                child: SingleChildScrollView(
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(),
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(flex: 2,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    storyBrain.nextStory(2);

                  });
                },
                child: Text(
                  storyBrain.getChoice2(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
