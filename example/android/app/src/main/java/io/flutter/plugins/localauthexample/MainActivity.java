package io.flutter.plugins.bioauthexample;

import android.os.Bundle;
import io.flutter.app.FlutterFragmentActivity;
import io.flutter.plugins.bioauth.LocalAuthPlugin;

public class MainActivity extends FlutterFragmentActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    LocalAuthPlugin.registerWith(registrarFor("io.flutter.plugins.bioauth.LocalAuthPlugin"));
  }
}