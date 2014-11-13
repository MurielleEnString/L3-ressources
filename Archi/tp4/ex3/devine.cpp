#include <iostream>
using namespace std;

int main() {
	
	int devine = 8;
	int res = -1;
	int nbcoups = 0;
	
	
	while(res != devine) {
		cout << "Entrez un entier positif" << endl;
		cin >> res;
		nbcoups++;
		if(res != devine) {
			cout << "Vous n'avez pas deviné correctement l'entier. Try again !" << endl;
		} else {
			cout << "Vous avez deviné correctement l'entier" << endl;
		}	
	}
	
	cout << "Il vous a fallu " << nbcoups << " coups pour deviner l'entier" << endl;
	cout << "Voulez-vous partager votre exploit sur Twitter ?" << endl;
	
	return 0;
}
