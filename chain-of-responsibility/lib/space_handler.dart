import 'package:chain_of_responsibility/handler.dart';

class SpacesHandler implements Handler {
  Handler? _sucessor;

  SpacesHandler([Handler? sucessor]) {
    _sucessor = sucessor;
  }

  @override
  handleRequest(String request) {
    final numberOfSpaces = ' '.allMatches(request).length;
    print("Número de espaços: $numberOfSpaces");

    _sucessor?.handleRequest(request);
  }
}
