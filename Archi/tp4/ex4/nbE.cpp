#include <iostream>
#include <string>
#include <string.h>
#include <stdio.h>
using namespace std;

int main() {
	
	string chaine;
	int nbE = 0;
	int ind = 0;
	
	cout << "Saisissez une chaîne" << endl;
	cin >> chaine;
	
	int taille_chaine = ;
	
	for(ind = 0; ind < taille_chaine -1; ind++) {
		if(chaine[ind] == 'e') {
			nbE++;
		}
	}
	
	cout << "Nombre de 'e' dans la chaîne : " << nbE << endl;
	
	return 0;
}
