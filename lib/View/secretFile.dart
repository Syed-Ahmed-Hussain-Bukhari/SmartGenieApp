
class ApiKey{
  
  static String api_key="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";
}


// figma design

// https://i.ytimg.com/vi/cyqt5t8b82E/maxresdefault.jpg

// https://www.figma.com/design/N0UQB28RTeVTNypqHSm4oU/Live-Chat-%2F-AI-Chatbot-Component-for-website-prototypes-(Community)?node-id=0-1&t=7FwKtVHLhgs6H7OO-0


// Openai link for image and chat generator

// https://platform.openai.com/docs/api-reference/images/create

// https://platform.openai.com/docs/api-reference/chat/create


// code:
/*
  onTap: ()async {
      const apiKey="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";
      final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({
        'model': 'gpt-3.5-turbo-1106',
        'messages': [
          {'role': 'user', 'content': "Hello"},
        ],
      }),
    );
    print(response.body);
        },
*/


// gemini ai dev
// https://ai.google.dev/
// https://aistudio.google.com/app/apikey

// https://aistudio.google.com/app/apikey?_gl=1*18o1tlk*_ga*NjQ5ODIzOTU4LjE3MjMxNDA2MDY.*_ga_P1DBVKWT6V*MTcyMzE0MDYwNS4xLjEuMTcyMzE0MDY0OC4xNy4wLjI3NzA0NzE5NA..

// https://ai.google.dev/gemini-api/docs/quickstart?lang=dart



// api key:   AIzaSyDQnHUG4D9z5lfI_idzJ5nnDNR4kpl6ADQ

 
// lexica ai   image generator

// stability ai
// https://platform.stability.ai/

// sk-QzM3f8cQ3Lwc7n4CbrRRHJQtOdBDHfKfNcM9ULpPyKc2MVLp
// https://platform.stability.ai/account/keys


// Example

// class ImageChat extends StatefulWidget {
//   const ImageChat({super.key});

//   @override
//   State<ImageChat> createState() => _ImageChatState();
// }

// class _ImageChatState extends State<ImageChat> {
//   Uint8List? imageData;
//   bool scanning = false;

//   TextEditingController promptController = TextEditingController();

//   final String apiKey = 'sk-QzM3f8cQ3Lwc7n4CbrRRHJQtOdBDHfKfNcM9ULpPyKc2MVLp'; // Use your API key here
//   final String apiHost = 'https://api.stability.ai';
//   final String engineId = 'stable-diffusion-v1-6'; // Check the correct engine ID if different

//   Future<void> generateImage(String promptValue) async {
//     if (promptValue.isEmpty) return;

//     setState(() {
//       scanning = true;
//       imageData = null;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse('$apiHost/v1/generation/$engineId/text-to-image'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'image/png',
//           'Authorization': 'Bearer $apiKey',
//         },
//         body: jsonEncode({
//           'text_prompts': [
//             {
//               'text': promptValue,
//               'weight': 1,
//             },
//           ],
//           'cfg_scale': 7,
//           'height': 1024,
//           'width': 1024,
//           'samples': 1,
//           'steps': 30,
//         }),
//       );

//       if (response.statusCode == 200) {
//         setState(() {
//           imageData = response.bodyBytes;
//         });
//       } else {
//         debugPrint('Failed to generate image: ${response.statusCode}');
//       }
//     } catch (e) {
//       debugPrint('Error occurred: $e');
//     } finally {
//       setState(() {
//         scanning = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Generate Image',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             TextField(
//               controller: promptController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.black,
//                     width: 2.0,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.black,
//                     width: 2.0,
//                   ),
//                 ),
//                 prefixIcon: Icon(
//                   Icons.text_fields,
//                   color: Colors.black,
//                 ),
//                 hintText: 'Enter your prompt here',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               onPressed: () {
//                 generateImage(promptController.text);
//               },
//               icon: Icon(
//                 Icons.image_search,
//                 color: Colors.white,
//               ),
//               label: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Text(
//                   'Generate Image',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.black,
//               ),
//             ),
//             SizedBox(height: 30),
//             scanning
//                 ? Padding(
//                     padding: const EdgeInsets.only(top: 60),
//                     child: Center(
//                       child: CircularProgressIndicator(color: Colors.black),
//                     ),
//                   )
//                 : imageData != null
//                     ? Image.memory(imageData!) // Display the generated image
//                     : Container(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 9a8285e933322121a8b8fb1fbbf4036a0118bf3897c3d59741772feb93af9fde