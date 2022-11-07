public class AdapterCorelDrawImage extends CorelDrawSurface implements ImagemTarget {

    @Override
    public void carregarImagem(String nomeDoArquivo) {
        CorelDrawCarregarSurface(nomeDoArquivo);
    }

    @Override
    public void desenharImagem(int posX, int posY, int largura, int altura) {
        CorelDrawDesenharSurface(largura, altura, posX, posY);
    }
}
