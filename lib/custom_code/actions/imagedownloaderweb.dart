// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

import 'package:image_downloader_web/image_downloader_web.dart';

final WebImageDownloader _webImageDownloader = WebImageDownloader();

Future imagedownloaderweb(String url) async {
  // Add your function code here!
  await _webImageDownloader.downloadImageFromWeb(url);
}
