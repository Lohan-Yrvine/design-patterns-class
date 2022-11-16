import 'package:chain_of_responsibility/handler.dart';

class DotsHandler implements Handler {
  Handler? _sucessor;

  DotsHandler([Handler? sucessor]) {
    _sucessor = sucessor;
  }

  @override
  handleRequest(String request) {
    final numberOfDots = '.'.allMatches(request).length;
    print("Número de pontos finais: $numberOfDots");

    _sucessor?.handleRequest(request);
  }
}
