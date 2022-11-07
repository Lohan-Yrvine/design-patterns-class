import 'dart:io';

class Highlander {
  // Em dart, se não criamos o atributo durante a construção do objeto, e ele
  // é privado, não podemos deixar o atributo como `null`, então nesse caso da
  // atividade, tenho que usar o construtor privado, que nunca terá
  // implementação. Mais informações abaixo.
  static final Highlander _instancia = Highlander._internal();
  static int _tentativas = 0;

  // Construtor privado devido _<nome>, onde `nome` geralmente é "internal" por
  // convenção da comunidade.
  Highlander._internal();

  // Aqui criamos um "construtor especial": um construtor factory só cria o
  // objeto uma vez, depois disso sempre retorna o mesmo objeto. Como disse
  // anteriormente, no caso da atividade, o nosso atributo já foi criado.
  // Documentação para maiores detalhes (observe o atributo "name"):
  // https://dart.dev/guides/language/language-tour#factory-constructors
  factory Highlander() {
    _tentativas++;
    return _instancia;
  }

  static int getTentativas() {
    return _tentativas;
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    Highlander();
  }

  Highlander h1 = Highlander();
  Highlander h2 = Highlander();

  if (identical(h1, h2)) {
    print("h1 e h2 são o mesmo objeto");
  }

  print("Tentativas: ${Highlander.getTentativas()}");
}
