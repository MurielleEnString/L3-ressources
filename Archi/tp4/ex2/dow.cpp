#include <iostream>
#include <string>
using namespace std;

const string jour_str[7] = {"dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"};
const int tab[12] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};

int main() {
	
	int jour, mois, annee, t3, t4;
	
	cout << "Jour ?" << endl;
	cin >> jour;
	
	cout << "Mois ?" << endl;
	cin >> mois;
	
	cout << "Année ?" << endl;
	cin >> annee;
	
	if(mois < 3) {
		annee--;
	}
	
	t3 = annee;
	t4 = annee >> 2;
	t3 = t3 + t4;
	t4 = annee/100;
	t3 = t3 - t4;
	t4 = t4 >> 2;
	t3 = t3 + t4;
	
	t4 = t4 - mois;
	t4 = tab[t4 - 1];
	t3 = t3 + t4;
	t3 = t3 + jour;
	t3 = t3%7;
	t3 = t3 << 2;
	cout << "Jour = " << jour_str[t3 - 1] << endl;
	
	return 0;
}
