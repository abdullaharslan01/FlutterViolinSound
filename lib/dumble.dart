import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Dumb extends StatefulWidget {
  const Dumb({super.key});

  @override
  State<Dumb> createState() => _DumbState();
}

final myPlayer = AudioPlayer(); 


class _DumbState extends State<Dumb> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:
             [
              Expanded(
                flex: 6,
                child: Column
                (   
                  children:
                 [
                    _Button(buttonColor: Colors.amber, notaName: "sol0",),
                    Spacer(flex: 1,),
                    _Button(buttonColor: Colors.blueAccent, notaName: "sol1",),
                    Spacer(flex: 1,),
                    _Button(buttonColor: Colors.cyanAccent, notaName: "sol2",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.redAccent, notaName: "sol3",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.white, notaName: "sol4",),
        
                 ],),
              ),
        Spacer(flex: 1,),
              Expanded(
                flex: 6,
                child: Column
                (   
                  children:
                 [
                    _Button(buttonColor: Colors.pinkAccent, notaName: "re0",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.deepPurple, notaName: "re1",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.lightGreenAccent, notaName: "re2",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.teal, notaName: "re3",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.amberAccent, notaName: "re4",),
        
                 ],),
              ),
          Spacer(flex: 1,), 
           Expanded(
            flex: 6,
                child: Column
                (   
                  children:
                 [
                    _Button(buttonColor: Colors.green, notaName: "la0",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.red, notaName: "la1",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.brown, notaName: "la2",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.pinkAccent, notaName: "la3",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.blue, notaName: "la4",),
        
                 ],),
              ),
              Spacer(flex: 1,),

               Expanded(
            flex: 6,
                child: Column
                (   
                  children:
                 [
                    _Button(buttonColor: Colors.grey, notaName: "mi0",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.amber, notaName: "mi1",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.lime, notaName: "mi2",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.purple, notaName: "mi3",),
                    Spacer(flex: 1,),

                    _Button(buttonColor: Colors.amberAccent, notaName: "mi4",),
        
                 ],),
              )
        
              
                    
             ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
   _Button({
    super.key, required this.buttonColor, required this.notaName
  });

Color buttonColor;
String notaName;
  void playSound(String path)
{
myPlayer.play(AssetSource("$path.wav"));

}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: InkWell(
      
      enableFeedback: false,
      onTap: ()
      {
       playSound(notaName);

      },
      child: Container(color: buttonColor,),));
  }
}

