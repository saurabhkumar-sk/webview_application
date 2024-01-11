import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_application/components/custom_button.dart';
import 'package:webview_application/provider/launch_url_provider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required final String title});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Webview Application",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 12, 30, 231),
        ),
        body: Consumer<LaunchUrlProvider>(
          builder: (context, provider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  color: Colors.red,
                  text: "Youtube",
                  ontap: provider.launchYoutubeUrls,
                ),
                CustomButton(
                  text: "Facebook",
                  color: Colors.blue,
                  ontap: provider.launchFacebookUrls,
                ),
                CustomButton(
                  text: "Instagram",
                  color: const Color.fromARGB(255, 107, 48, 29),
                  ontap: provider.launchInstagramUrls,
                ),
              ],
            );
          },
        ));
  }
}
