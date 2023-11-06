// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';
// import 'package:video_compress_plus/video_compress_plus.dart';
// import 'package:vidshare_app/constants.dart';
// import 'package:vidshare_app/models/video.dart';
// // ignore: depend_on_referenced_packages
// // import 'package:video_compress/video_compress.dart';

// class UploadVideoController extends GetxController {
//   _compressVideo(String videoPath) async {
//     final compressedVideo = await VideoCompress.compressVideo(
//       videoPath,
//       quality: VideoQuality.DefaultQuality,
//     );
//     return compressedVideo!.file;
//   }

//   Future<String> _uploadVideoToStorage(String id, String videoPath) async {
//     Reference ref = firebaseStorage.ref().child('videos').child(id);

//     UploadTask uploadTask = ref.putFile(await _compressVideo(videoPath));
//     TaskSnapshot snap = await uploadTask;
//     String downloadUrl = await snap.ref.getDownloadURL();
//     return downloadUrl;
//   }

//   _getThumbnail(String videoPath) async {
//     final thumbnail = await VideoCompress.getFileThumbnail(videoPath);
//     return thumbnail;
//   }

//   Future<String> _uploadImageToStorage(String id, String videoPath) async {
//     Reference ref = firebaseStorage.ref().child('thumbnails').child(id);
//     UploadTask uploadTask = ref.putFile(await _getThumbnail(videoPath));
//     TaskSnapshot snap = await uploadTask;
//     String downloadUrl = await snap.ref.getDownloadURL();
//     return downloadUrl;
//   }

//   // upload video
//   uploadVideo(String songName, String caption, String videoPath) async {
//     try {
//       String uid = firebaseAuth.currentUser!.uid;
//       DocumentSnapshot userDoc =
//           await firestore.collection('users').doc(uid).get();
//       // get id
//       var allDocs = await firestore.collection('videos').get();
//       int len = allDocs.docs.length;
//       String videoUrl = await _uploadVideoToStorage("Video $len", videoPath);
//       String thumbnail = await _uploadImageToStorage("Video $len", videoPath);

//       Video video = Video(
//         username: (userDoc.data()! as Map<String, dynamic>)['name'],
//         uid: uid,
//         id: "Video $len",
//         likes: [],
//         commentCount: 0,
//         shareCount: 0,
//         songName: songName,
//         caption: caption,
//         videoUrl: videoUrl,
//         profilePhoto: (userDoc.data()! as Map<String, dynamic>)['profilePhoto'],
//         thumbnail: thumbnail, datePublished: ,
//         // timestamp: Timestamp.now(),
//       );

//       await firestore.collection('videos').doc('Video $len').set(
//             video.toJson(),
//           );
//       Get.back();
//     } catch (e) {
//       Get.snackbar(
//         'Error Uploading Video',
//         e.toString(),
//       );
//     }
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:video_compress_plus/video_compress_plus.dart';
import 'package:vidshare_app/constants.dart';
import 'package:vidshare_app/models/video.dart';

class UploadVideoController extends GetxController {
  _compressVideo(String videoPath) async {
    final compressedVideo = await VideoCompress.compressVideo(
      videoPath,
      quality: VideoQuality.LowQuality,
    );
    return compressedVideo!.file;
  }

  Future<String> _uploadVideoToStorage(String id, String videoPath) async {
    Reference ref = firebaseStorage.ref().child('videos').child(id);

    UploadTask uploadTask = ref.putFile(await _compressVideo(videoPath));
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  _getThumbnail(String videoPath) async {
    final thumbnail = await VideoCompress.getFileThumbnail(videoPath);
    return thumbnail;
  }

  Future<String> _uploadImageToStorage(String id, String videoPath) async {
    Reference ref = firebaseStorage.ref().child('thumbnails').child(id);
    UploadTask uploadTask = ref.putFile(await _getThumbnail(videoPath));
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  // upload video
  uploadVideo(String songName, String caption, String videoPath) async {
    try {
      String uid = firebaseAuth.currentUser!.uid;
      DocumentSnapshot userDoc =
          await firestore.collection('users').doc(uid).get();
      // get id
      var allDocs = await firestore.collection('videos').get();
      int len = allDocs.docs.length;
      String videoUrl = await _uploadVideoToStorage("Video $len", videoPath);
      String thumbnail = await _uploadImageToStorage("Video $len", videoPath);

      // Set the datePublished to the current date and time
      // DateTime datePublished = DateTime.now();

      Video video = Video(
        username: (userDoc.data()! as Map<String, dynamic>)['name'],
        uid: uid,
        id: "Video $len",
        likes: [],
        commentCount: 0,
        shareCount: 0,
        songName: songName,
        caption: caption,
        videoUrl: videoUrl,
        profilePhoto: (userDoc.data()! as Map<String, dynamic>)['profilePhoto'],
        thumbnail: thumbnail,

        // datePublished: DateTime.now(), // Set the datePublished here
      );

      await firestore.collection('videos').doc('Video $len').set(
            video.toJson(),
          );
      Get.back();
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error Uploading Video',
        e.toString(),
      );
    }
  }
}
