List marteloThor(thor, martelo) {
  var lista = [];

  int xThor = thor[0];
  int yThor = thor[1];
  lista.add([xThor, yThor]);

  int xMartelo = martelo[0];
  int yMartelo = martelo[1];

  while (xThor != xMartelo) {
    if (xThor < xMartelo) {
      xThor++;
      lista.add([xThor, yThor]);
    } else if (xThor > xMartelo) {
      xThor--;
      lista.add([xThor, yThor]);
    }
  }

  while (yThor != yMartelo) {
    if (yThor < yMartelo) {
      yThor++;
      lista.add([xThor, yThor]);
    } else if (yThor > yMartelo) {
      yThor--;
      lista.add([xThor, yThor]);
    }
  }
  return lista;
}

int tam(lista) {
  int tamanho = 0;
  lista.forEach((element) => tamanho++);
  return tamanho;
}

int cont = 0;
int getCont(tamanho) {
  if (cont < tamanho) {
    return cont++;
  }
}

//FUNCAO PRINCIPAL
void main() {
  /*
  marteloThor(thor, martelo);
  marteloThor([5,2], [4,7]);
  marteloThor([9,7], [11,3]);
  marteloThor([5, 7], [-5, -3]);
  */
}
