import 'dart:io';

import 'package:chain_of_responsibility/space_handler.dart';
import 'package:chain_of_responsibility/letter_a_handler.dart';
import 'package:chain_of_responsibility/dot_handler.dart';

void main() {
  final dotsHandler = DotsHandler();
  final letterAHandler = LetterAHandler(dotsHandler);
  final spacesHandler = SpacesHandler(letterAHandler);

  final request = stdin.readLineSync();
  spacesHandler.handleRequest(request!);
}
