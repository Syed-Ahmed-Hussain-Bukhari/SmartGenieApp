// import 'package:ai_chat_bot/Utils/Utils.dart';
// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:flutter/material.dart';

// myVoiceDialogBox(context){
//    return showDialog(context: context, builder: (context)=>AlertDialog(
//                       contentPadding: EdgeInsets.all(25),
//                      backgroundColor:MyColors.bgColor,
//                      content: SingleChildScrollView(
//                             child: Column(
//                               // mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                               AvatarGlow(
//                                 animate: true,
//                                 glowColor: MyColors.mainColor,
//                                 child: Container(
//                                   margin: EdgeInsets.all(12),
//                                   child: CircleAvatar(
//                                     radius: 30,
//                                     backgroundColor: MyColors.mainColor,
//                                     child: Icon(Icons.mic,color: MyColors.whiteColor,size: 30,)),
//                                 ),
//                               ),
//                                Container(
//                                 // alignment: Alignment.center,
//                                 margin: EdgeInsets.all(12),
//                                 child:myCustomWidget.myText("Try saying something...", 15, MyColors.userTextColor)
//                                )

//                             ],),
//                      ),
//                    ));
// }

// import 'dart:async';

// import 'package:ai_chat_bot/Utils/Utils.dart';
// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:speech_to_text/speech_to_text.dart';

// class MySpeecHTesting extends StatefulWidget {
//   const MySpeecHTesting({super.key});

//   @override
//   State<MySpeecHTesting> createState() => _MySpeecHTestingState();
// }

// class _MySpeecHTestingState extends State<MySpeecHTesting> {

//    var voiceText="Try saying something...";
//   SpeechToText speech = SpeechToText();
//   bool isAvailable=false;
//   bool animationStart=false;

//   @override
//   void initState()  {
//     initSpeech();
//     // TODO: implement initState
//     super.initState();
//   }

//   initSpeech()async{
//      isAvailable = await speech.initialize();
//      setState(() {
       
//      });

//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//                Container(
//                 margin: EdgeInsets.only(bottom: 40),
//               child: myCustomWidget.myText(voiceText, 15, MyColors.userTextColor), 
//             ),
//             AvatarGlow(
//                 animate: animationStart,
//                  glowColor: MyColors.mainColor,
//               child: GestureDetector(
//                 onTapDown: (value){
//                   Get.defaultDialog(
//                   title: 'Getx Dialog',
//                   middleText: 'This is a dialog using Getx',
//                   onConfirm: () => Get.back(),
//                   onCancel: () {},
//                 );
                  
//                                       // setState(() {
//                                       //   animationStart=true;
//                                       // });
//                                       // if(isAvailable){
//                                       //   speech.listen(
//                                       //     onResult: (value){
//                                       //       setState(() {
//                                       //         voiceText=value.recognizedWords;
//                                       //       });
//                                       //     }
//                                       //   );
//                                       // }
//                                     },
//                                     onTapUp: (value){
//                                        setState(() {
//                                         animationStart=false;
//                                       });
//                                       speech.stop();
                                      
//                                     },     
//                                 child: CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: MyColors.mainColor,
//                                 child: Icon(Icons.mic,color: MyColors.whiteColor,size: 30,)),
//                                               ),
//                             ),
      
           
//           ],
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
// import 'package:avatar_glow/avatar_glow.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   stt.SpeechToText _speech=stt.SpeechToText();
//   bool _isListening = false;
//   String _text = "Tap the microphone and start speaking";

//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//   }

//   void _listen(Function setState) async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (status) => print('Status: $status'),
//         onError: (error) => print('Error: $error'),
//       );
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (val) {
//             setState(() {
//               _text = val.recognizedWords;
//             });
//           },
//         );
//       }
//     } else {
//       setState(() {
//         _isListening = false;
//         _speech.stop();
//       });
//     }
//   }

//   void _showSpeechDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               child: Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       'Speech to Text',
//                       style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 16.0),
//                     Text(
//                       _text,
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                     SizedBox(height: 16.0),
//                     AvatarGlow(
//                       // endRadius: 60.0,
//                       animate: _isListening,
//                       glowColor: Colors.blue,
//                       child: IconButton(
//                         icon: Icon(
//                           _isListening ? Icons.mic : Icons.mic_none,
//                           color: Colors.blue,
//                           size: 30.0,
//                         ),
//                         onPressed: () {
//                           _listen(setState);
//                         },
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         _speech.stop();
//                         Navigator.of(context).pop();
//                       },
//                       child: Text('Close'),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Speech to Text in Dialog')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _showSpeechDialog(context),
//           child: Text('Open Dialog'),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChatPage(),
//     );
//   }
// }

// class ChatPage extends StatefulWidget {
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   int? selectedMessageIndex;

//   List<String> messages = [
//     "Hi there!",
//     "How are you?",
//     "I am fine, thanks!",
//     "What about you?",
//     "I am doing well, too.",
//     "That's great to hear!",
//   ];

//   void _onMessageLongPress(int index) {
//     setState(() {
//       if (selectedMessageIndex == index) {
//         selectedMessageIndex = null; // Deselect if already selected
//       } else {
//         selectedMessageIndex = index; // Select the message
//       }
//     });
//   }

//   void _deleteMessage() {
//     if (selectedMessageIndex != null) {
//       setState(() {
//         messages.removeAt(selectedMessageIndex!);
//         selectedMessageIndex = null;
//       });
//     }
//   }

//   void _copyMessage() {
//     if (selectedMessageIndex != null) {
//       final message = messages[selectedMessageIndex!];
//       // Here you would typically use the Clipboard API to copy the text
//       // For now, we'll just show a snack bar
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Copied: $message')),
//       );
//       setState(() {
//         selectedMessageIndex = null;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat'),
//         actions: selectedMessageIndex != null
//             ? [
//                 IconButton(
//                   icon: Icon(Icons.copy),
//                   onPressed: _copyMessage,
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: _deleteMessage,
//                 ),
//               ]
//             : [],
//       ),
//       body: ListView.builder(
//         itemCount: messages.length,
//         itemBuilder: (context, index) {
//           bool isSelected = selectedMessageIndex == index;
//           return GestureDetector(
//             onLongPress: () => _onMessageLongPress(index),
//             child: Container(
//               color: isSelected ? Colors.blue.shade100 : Colors.transparent,
//               padding: EdgeInsets.all(16.0),
//               child: Text(messages[index]),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChatPage(),
//     );
//   }
// }

// class ChatPage extends StatefulWidget {
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   int? selectedMessageIndex;
  
//   // A list of messages with an associated boolean to represent the sender.
//   // 'true' could represent "Person 1", and 'false' represents "Person 2".
//   List<Map<String, dynamic>> messages = [
//     {'text': "Hi there!", 'isSentByMe': true},
//     {'text': "Hello!", 'isSentByMe': false},
//     {'text': "How are you?", 'isSentByMe': true},
//     {'text': "I'm good, thanks! How about you?", 'isSentByMe': false},
//     {'text': "I'm doing well.", 'isSentByMe': true},
//     {'text': "Great to hear!", 'isSentByMe': false},
//   ];

//   void _onMessageLongPress(int index) {
//     setState(() {
//       if (selectedMessageIndex == index) {
//         selectedMessageIndex = null; // Deselect if already selected
//       } else {
//         selectedMessageIndex = index; // Select the message
//       }
//     });
//   }

//   void _deleteMessage() {
//     if (selectedMessageIndex != null) {
//       setState(() {
//         messages.removeAt(selectedMessageIndex!);
//         selectedMessageIndex = null;
//       });
//     }
//   }

//   void _copyMessage() {
//     if (selectedMessageIndex != null) {
//       final message = messages[selectedMessageIndex!]['text'];
//       // Here you would typically use the Clipboard API to copy the text
//       // For now, we'll just show a snack bar
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Copied: $message')),
//       );
//       setState(() {
//         selectedMessageIndex = null;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat'),
//         actions: selectedMessageIndex != null
//             ? [
//                 IconButton(
//                   icon: Icon(Icons.copy),
//                   onPressed: _copyMessage,
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: _deleteMessage,
//                 ),
//               ]
//             : [],
//       ),
//       body: ListView.builder(
//         itemCount: messages.length,
//         itemBuilder: (context, index) {
//           bool isSentByMe = messages[index]['isSentByMe'];
//           bool isSelected = selectedMessageIndex == index;
//           Alignment messageAlignment =
//               isSentByMe ? Alignment.centerRight : Alignment.centerLeft;
//           Color messageColor = isSentByMe ? Colors.blue : Colors.grey;

//           return GestureDetector(
//             onLongPress: () => _onMessageLongPress(index),
//             child: Container(
//               alignment: messageAlignment,
//               color: isSelected ? Colors.blue.shade100 : Colors.transparent,
//               padding: EdgeInsets.all(10.0),
//               margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//               child: Container(
//                 padding: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: messageColor,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Text(
//                   messages[index]['text'],
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }




// void main() async {
//   GoogleTranslator translator = GoogleTranslator();

//   final input = "Здравствуйте. Ты в порядке?";

//   translator.translate(input, from: 'ru', to: 'en').then(print);
//   // prints Hello. Are you okay?
  
//   var translation = await translator.translate("Dart is very cool!", to: 'pl');
//   print(translation);
//   // prints Dart jest bardzo fajny!

//   print(await "example".translate(to: 'pt'));
//   // prints exemplo
// }