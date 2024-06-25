#ifndef ASSINATURAS_H
#define ASSINATURAS_H

int somar(int a, int b);
float calcularMedia(float* valores, int tamanho);
int checarMensagem(char* mensagem);
int maximo(int a, int b, int c);
double calcularAreaCirculo(double raio);
int contarCaracteres(char* string);
int arrayOrdenado(int* array, int tamanho);
float converterParaCelsius(float temperaturaFahrenheit);
int fatorial(int numero);
int matrizNaNula(int** matriz, int linhas, int colunas);
char* concatenarStrings(char* str1, char* str2);
void abrirArquivo(char* nomeArquivo, char* modo);
int verificarPrimo(int numero);
int copiarVetor(int* origem, int* destino, int tamanho);
double calcularPotencia(double base, int expoente);
int dadosValidos(char* nome, int* idade, float* altura);
int encontrarIndiceValor(int* array, int tamanho, int valor);
int aprovado(float a, float b, float c);
char* gerarSenhaAleatoria(int comprimento);

#endif
