// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Android side authentication messages.
///
/// Provides default values for all messages.
class AndroidAuthMessages {
  const AndroidAuthMessages({
    this.fingerprintHint,
    this.fingerprintNotRecognized,
    this.fingerprintSuccess,
    this.cancelButton,
    this.signInTitle,
    this.fingerprintRequiredTitle,
    this.goToSettingsButton,
    this.goToSettingsDescription,
  });

  final String fingerprintHint;
  final String fingerprintNotRecognized;
  final String fingerprintSuccess;
  final String cancelButton;
  final String signInTitle;
  final String fingerprintRequiredTitle;
  final String goToSettingsButton;
  final String goToSettingsDescription;

  Map<String, String> get args {
    return <String, String>{
      'fingerprintHint': fingerprintHint ?? androidFingerprintHint,
      'fingerprintNotRecognized':
          fingerprintNotRecognized ?? androidFingerprintNotRecognized,
      'fingerprintSuccess': fingerprintSuccess ?? androidFingerprintSuccess,
      'cancelButton': cancelButton ?? androidCancelButton,
      'signInTitle': signInTitle ?? androidSignInTitle,
      'fingerprintRequired':
          fingerprintRequiredTitle ?? androidFingerprintRequiredTitle,
      'goToSetting': goToSettingsButton ?? goToSettings,
      'goToSettingDescription':
          goToSettingsDescription ?? androidGoToSettingsDescription,
    };
  }
}

/// iOS side authentication messages.
///
/// Provides default values for all messages.
class IOSAuthMessages {
  const IOSAuthMessages({
    this.lockOut,
    this.goToSettingsButton,
    this.goToSettingsDescription,
    this.cancelButton,
  });

  final String lockOut;
  final String goToSettingsButton;
  final String goToSettingsDescription;
  final String cancelButton;

  Map<String, String> get args {
    return <String, String>{
      'lockOut': lockOut ?? iOSLockOut,
      'goToSetting': goToSettingsButton ?? goToSettings,
      'goToSettingDescriptionIOS':
          goToSettingsDescription ?? iOSGoToSettingsDescription,
      'okButton': cancelButton ?? iOSOkButton,
    };
  }
}

// Strings for bioauthentication plugin. Currently supports English.
//  must be string literals.
String get androidFingerprintHint => ('Touch sensor');

String get androidFingerprintNotRecognized =>
    ('Fingerprint not recognized. Try again.');

String get androidFingerprintSuccess => ('Fingerprint recognized.');

String get androidCancelButton => ('Cancel');

String get androidSignInTitle => ('Fingerprint Authentication' );

String get androidFingerprintRequiredTitle {
  return ('Fingerprint required');
}

String get goToSettings => ('Go to settings');

String get androidGoToSettingsDescription => (
    'Fingerprint is not set up on your device. Go to \'Settings > Security\' to add your fingerprint.');

String get iOSLockOut => (
    'Biometric authentication is disabled. Please lock and unlock your screen to enable it.');

String get iOSGoToSettingsDescription => (
    'Biometric authentication is not set up on your device. Please either enable Touch ID or Face ID on your phone.' );

String get iOSOkButton => ('OK');
