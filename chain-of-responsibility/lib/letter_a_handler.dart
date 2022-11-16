import 'package:chain_of_responsibility/handler.dart';

class LetterAHandler implements Handler {
  Handler? _sucessor;

  LetterAHandler([Handler? sucessor]) {
    _sucessor = sucessor;
  }

  @override
  handleRequest(String request) {
    final numberOfAs = 'a'.allMatches(request).length;
    print("Quantidade de letras 'a': $numberOfAs");

    _sucessor?.handleRequest(request);
  }
}
