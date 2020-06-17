pubspec.yaml template

```dart
name: <name>
description: <description>

version: 1.0.0+1

environment:
  sdk: ">=2.1.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  
  # suport multi language
  flutter_localizations:
    sdk: flutter


  cupertino_icons: ^0.1.3
  http: ^0.12.0+2
  xml: ^3.5.0
  shared_preferences: ^0.4.2
  provider: ^2.0.1

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true

  # To add Flutter specific assets to your application, add an assets section,

  # To add Flutter specific custom fonts to your application, add a fonts
  # section here, in this "flutter" section. Each entry in this list should
  # have a "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font.
 
  module:
    androidX: true
    androidPackage: <androidPackage>
    iosBundleIdentifier: <iosBundleIdentifier>

```


| No| Descriptions| Libs  |Android</br>iOS|Note|
| :---- |:-|:----|:----|:----------|
| 1| Future-based library for making HTTP requests| [http](https://pub.dev/packages/http)  |YES|`sdk: ">=2.1.0 <3.0.0"` </br>`http: ^0.12.0+2`|
| 2| XML parser</br>Dart XML is a lightweight library for parsing, traversing, querying, transforming and building XML documents.| [xml](https://pub.dev/packages/xml)   |YES|[Dart xml parser doesn’t decode UTF-8 characters](https://github.com/ttpho/flutter/issues/1)</br>`sdk: ">=2.1.0 <3.0.0"`</br> `xml: ^3.5.0`|
| 3| Wraps NSUserDefaults (on iOS) and SharedPreferences (on Android), providing a persistent store for simple data. Data is persisted to disk asynchronously. | [shared_preferences](https://pub.dev/packages/shared_preferences)  |YES|`sdk: ">=2.1.0 <3.0.0"`</br>`shared_preferences: ^0.4.2`|
| 4| A wrapper around InheritedWidget to make them easier to use and more reusable.| [provider](https://pub.dev/packages/provider)  |YES|`sdk: ">=2.1.0 <3.0.0"` </br>`provider: ^2.0.1`|
| ...| ...| ...  |...|...|
