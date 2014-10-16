
#include <iostream>
#include <string>

using namespace std;

const string V[36] = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};

int ascii_to_int(char c) {
	if( (c >= 48) && (c <= 57) ) { //cas d'un chiffre
		return c%48;
	} else if( (c >= 65) && (c <= 90) ) { //cas d'une majuscule
		return (c%65 + 10);
	} else if( (c >= 97) && (c <= 122) ) { //cas d'une minuscule
		return (c%97 + 10);
	} else {
		return -1;
	}
}

string base_converter(string chaine, int base_depart, int base_arrivee) {
	
	//contrôle des valeurs des bases
	if( (base_arrivee >= 2) && (base_arrivee <= 36) && (base_depart >= 2) && (base_depart <= 36) ) {
		//variables
		int acc = ascii_to_int(chaine[0]); //accumulateur pour la conversion en base 10
		string res = "";
		int taille_ch = chaine.length();
		int ind;
		
		//conversion de la base d'origine vers la base 10
		for(ind = 1; ind < taille_ch; ind++) {
			acc = acc*base_depart + ascii_to_int(chaine[ind]);
		}
		
		//conversion de la base 10 vers la base d'arrivée par division itérée
		while(acc > 0) {
			res = V[acc%base_arrivee] + res;
			acc = acc/base_arrivee;
		}
		return res;
		
	} else {
		cout << "Erreur : les bases doivent être comprises entre 2 et 36 inclus" << endl;
		return chaine;
	}
}


int main() {
	
	cout << base_converter("3eh12",18,30) << endl;
	
	return 0;
}
