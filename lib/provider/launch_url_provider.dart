import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlProvider extends ChangeNotifier {
  final facebook = Uri.parse('https://www.facebook.com/');
  final youtube =
      Uri.parse('https://www.youtube.com/channel/UCtn5vZ8NknRxnwT3fEpVTJw');
  final instagram =
      Uri.parse('https://www.instagram.com/codecreatorskr/?hl=en');

  Future<void> launchInstagramUrls() async {
    if (!await canLaunchUrl(instagram)) {
      await launchUrl(
        instagram,
        mode: LaunchMode.inAppWebView,
      );
    } else {
      throw "SomeThing Went Wrong in $instagram";
    }
    notifyListeners();
  }

  Future<void> launchYoutubeUrls() async {
    if (!await canLaunchUrl(youtube)) {
      await launchUrl(
        youtube,
        mode: LaunchMode.inAppWebView,
      );
    } else {
      throw "SomeThing Went Wrong in $youtube";
    }
    notifyListeners();
  }

  Future<void> launchFacebookUrls() async {
    if (!await canLaunchUrl(facebook)) {
      await launchUrl(
        facebook,
        mode: LaunchMode.inAppWebView,
      );
    } else {
      throw "SomeThing Went Wrong in $facebook";
    }
    notifyListeners();
  }
}
