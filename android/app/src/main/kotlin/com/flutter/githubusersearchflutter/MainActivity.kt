package com.flutter.githubusersearchflutter

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity(): FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    getWindow().setStatusBarColor(0x00000000);
    GeneratedPluginRegistrant.registerWith(this)
  }
}
