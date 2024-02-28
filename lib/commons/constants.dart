import 'package:flutter/material.dart';

BoxConstraints gBoxConstraints = const BoxConstraints();
bool kIsWebCheck = gBoxConstraints.maxWidth > 1000 ? true : false;

bool isWeb() {
  return gBoxConstraints.maxWidth > 1000;
}
