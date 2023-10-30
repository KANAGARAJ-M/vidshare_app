// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class Forum extends StatefulWidget {
//   @override
//   _ForumState createState() => _ForumState();

// }

// class _ForumState extends State<Forum> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Forum',
//         home: Scaffold(
//           body: WebViewWidget(initialUrl: "https://website.com",
//             javascriptMode: JavascriptMode.unrestricted,
//           ),
//         )
//     );
//   }
// }


import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class InsForUpVid extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Title Your App',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//             body: Container(
//           child: WebView(
//             initialUrl: 'https://website.com',
//             javascriptMode: JavascriptMode.unrestricted,
//             onWebViewCreated: (WebViewController webViewController) {
//               _controller.complete(webViewController);
//             },
//             navigationDelegate: (NavigationRequest request) {
//               if (request.url.startsWith("https://website.com")) {
//                 return NavigationDecision.navigate;
//               } else {
//                 _launchURL(request.url);
//                 return NavigationDecision.prevent;
//               }
//             },
//           ),
//         )));
//   }

//   _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }


import 'package:webview_flutter/webview_flutter.dart';

