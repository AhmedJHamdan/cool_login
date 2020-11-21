// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cool_login/FieldValidator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cool_login/main.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'Enter Email!');
  });

  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail('#123');
    expect(result, 'Enter Valid Email!');
  });

  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('ahmedhamdan@gmail.com');
    expect(result, null);
  });

  test('Empty Password Test', () {
    var result = FieldValidator.validatePassword('');
    expect(result, 'Enter Password!');
  });

  test('Invalid Password Test', () {
    var result = FieldValidator.validatePassword('123');
    expect(result, 'Password must be more than 6 charater');
  });

  test('Valid Password Test', () {
    var result = FieldValidator.validatePassword('ajay12345');
    expect(result, null);
  });
}
