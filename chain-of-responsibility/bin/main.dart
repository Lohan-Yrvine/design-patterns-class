import 'dart:io';

import 'package:chain_of_responsibility/handler.dart';
import 'package:chain_of_responsibility/space_handler.dart';
import 'package:chain_of_responsibility/letter_a_handler.dart';
import 'package:chain_of_responsibility/dot_handler.dart';

void main() {
  final Handler dotsHandler = DotsHandler();
  final Handler letterAHandler = LetterAHandler(dotsHandler);
  final Handler spacesHandler = SpacesHandler(letterAHandler);

  final request = stdin.readLineSync();
  spacesHandler.handleRequest(request!);
}
