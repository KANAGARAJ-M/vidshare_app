import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// final Uri _url = Uri.parse('https://flutter.dev');

class InstructionForUpload extends StatefulWidget {
  const InstructionForUpload({super.key});

  @override
  State<InstructionForUpload> createState() => _InstructionForUploadState();
}

class _InstructionForUploadState extends State<InstructionForUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instructions For Upload Videos'),
        // actions: [
        //   IconButton(
        //     onPressed: () async {
        //       const url = "https://www.google.com/";
        //       final Uri _url = Uri.parse(url);
        //       await launchUrl(
        //         _url,
        //         mode: LaunchMode.inAppWebView,
        //         webViewConfiguration: const WebViewConfiguration(
        //           enableJavaScript: true,

        //           // ,
        //         ),
        //       );
        //     },
        //     // icon: Icon(Icons.fmd_good),imghp?hl=en&ogbl
        //     icon: Icon(
        //       Icons.abc,
        //     ),
        //     // icon: const AssetImage('assets/google.svg'),
        //   ),

        //   // IconButton(
        //   //   icon: const Icon(
        //   //     Icons.privacy_tip,
        //   //     // color: primaryColor,
        //   //   ),
        //   //   onPressed: () async {
        //   //     const url = "https://flutter.io";
        //   //     final Uri _url = Uri.parse(url);

        //   //     await launchUrl(_url, mode: LaunchMode.externalApplication);
        //   //   },
        //   // ),
        // ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Click the button -> Add Video -> Open New Tab',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '2. Choose that which Media is used to Upload Video',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '3. Enter the song name or your own name  and Caption is optional',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '4. Press Share Button and Wait Until the video upload',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 60,
            ),
            // TextButton(onPressed: , child: child)
          ],
        ),
      ),
    );
  }
  //  _launchURL(String myUrl) async {
  //   if (await canLaunch(myUrl))
  //   {
  //     await launch(myUrl);
  //   } else {
  //     throw 'Could not launch $myUrl';
  //   }
  // }
  
}
