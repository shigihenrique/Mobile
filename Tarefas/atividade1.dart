int leastDifference(a, b, c) {
  int dif_1 = a - b;
  int dif_2 = a - c;
  int dif_3 = b - c;

  var difs = [dif_1, dif_2, dif_3];

  //Conceito de Modulo
  for (var i = 0; i < difs.length; i++) {
    if (difs[i] < 0) {
      difs[i] *= -1;
    }
  }

  //Faz sort em ordem crescente
  difs.sort();
  int least = difs[0];
  return least;
}

int destruirPetecas(numPetecas, numAmigos) {
  int destruir = numPetecas % numAmigos;
  return destruir;
}

void marteloThor(thor, martelo) {
  int x_thor = thor[0];
  int y_thor = thor[1];

  int x_martelo = martelo[0];
  int y_martelo = martelo[1];

  while (x_thor != x_martelo) {
    if (x_thor < x_martelo) {
      x_thor++;
      print([x_thor, y_thor]);
    } else if (x_thor > x_martelo) {
      x_thor--;
      print([x_thor, y_thor]);
    }
  }

  while (y_thor != y_martelo) {
    if (y_thor < y_martelo) {
      y_thor++;
      print([x_thor, y_thor]);
    } else if (y_thor > y_martelo) {
      y_thor--;
      print([x_thor, y_thor]);
    }
  }
}

//FUNCAO PRINCIPAL
void main() {
  /*
  print(leastDifference(1, 5, 9));
  print(leastDifference(-1, 15, 3));
  print(leastDifference(-101, 15, 99));
  print(leastDifference(21, 35, 19));
  
  print(destruirPetecas(23, 4));
  print(destruirPetecas(35, 6));
  print(destruirPetecas(95, 19));
    
  marteloThor([5,2], [4,7]);
  marteloThor([9,7], [11,3]);
  marteloThor([5, 7], [-5, -3]);
  */
}
