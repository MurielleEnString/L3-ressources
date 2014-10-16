#include <iostream>
#include <stdlib.h>
#include <math.h>
using namespace std;

//méthode copiant le tableau A dans le tableau B
void copie_tab(double A[], double B[], int taille) {
	int ind;
	for(ind = 0; ind < taille; ind++) {
		B[ind] = A[ind];
	}
}

//Fonction de somme récursive d'un tableau de réels
double somme_recursive(double T[], int nb) {
	if(nb == 0) {
		return 0.0;
	} else {
		return T[0] + somme_recursive(T+1,nb-1);
	}
}

//Fonction de compraraison croissante de deux double
int croissant(const void *x, const void *y) {	
	/* Cast en le type effectif */
	double *a = (double*)(x);
	double *b = (double*)(y);
	
	if(*a < *b) {
		return -1;
	} else if(*a > *b) {
		return 1;
	} else  {
		return 0;
	}	
}

//Fonction de compraraison croissante absolue de deux double
int croissant_abs(const void *x, const void *y) {	
	/* Cast en le type effectif */
	double *a = (double*)(x);
	double *b = (double*)(y);
	
	if(fabs(*a) < fabs(*b)) {
		return -1;
	} else if(fabs(*a) > fabs(*b)) {
		return 1;
	} else  {
		return 0;
	}	
}

//Fonction de compraraison décroissante de deux double
int decroissant(const void *x, const void *y) {	
	/* Cast en le type effectif */
	double *a = (double*)(x);
	double *b = (double*)(y);
	
	if(*a < *b) {
		return 1;
	} else if(*a > *b) {
		return -1;
	} else  {
		return 0;
	}	
}

//Fonction de compraraison décroissante absolue de deux double
int decroissant_abs(const void *x, const void *y) {	
	/* Cast en le type effectif */
	double *a = (double*)(x);
	double *b = (double*)(y);
	
	if(fabs(*a) < fabs(*b)) {
		return 1;
	} else if(fabs(*a) > fabs(*b)) {
		return -1;
	} else  {
		return 0;
	}	
}

//Fonction de tir par ordre croissant
double somme_croissante(double T[], int taille) {
	double T_copie[taille];
	//copie du tableau passé en paramètre
	copie_tab(T, T_copie,taille);
	//tri du tableau de copie
	qsort(T_copie,taille,sizeof(double),croissant);
	return somme_recursive(T_copie,taille);
}

//Fonction de tir par ordre croissant absolu
double somme_abs_croissante(double T[], int taille) {
	double T_copie[taille];
	//copie du tableau passé en paramètre
	copie_tab(T, T_copie,taille);
	//tri du tableau de copie
	qsort(T_copie,taille,sizeof(double),croissant_abs);
	return somme_recursive(T_copie,taille);
}

//Fonction de tir par ordre décroissant
double somme_decroissante(double T[], int taille) {
	double T_copie[taille];
	//copie du tableau passé en paramètre
	copie_tab(T, T_copie,taille);
	//tri du tableau de copie
	qsort(T_copie,taille,sizeof(double),decroissant);
	return somme_recursive(T_copie,taille);
}

//Fonction de tir par ordre décroissant absolu
double somme_abs_decroissante(double T[], int taille) {
	double T_copie[taille];
	//copie du tableau passé en paramètre
	copie_tab(T, T_copie,taille);
	//tri du tableau de copie
	qsort(T_copie,taille,sizeof(double),decroissant_abs);
	return somme_recursive(T_copie,taille);
}

int main() {
	const int szT = 31;
	 double T[szT] = 
							{ 9007199254740992.0, 999999999999.9, -999999999998.9, 3.56, 12.8766, 
							 0.0123, 999394.4453, 1265356.434536, 23.53, 7889.123, 0.00002145, 0.5, 
							 0.06456, 1254534536.4574, -1254534536.4575, -9007199254740992.0, 
							 -999999999999.9, 999999999998.9, -3.56, -12.8766, -0.0123, 
							 -999394.4453, -1265356.434536, -23.53, -7889.123, -0.00002145, 
							 -0.5, -0.06456, -1254534536.4574, 1254534536.4575, 2.6 };
	cout << "Somme récursive : " << somme_recursive(T,szT) << endl;
	cout << "Somme croissante : " << somme_croissante(T,szT) << endl;
	cout << "Somme décroissante : " << somme_decroissante(T,szT) << endl;
	cout << "Somme croissante absolue : " << somme_abs_croissante(T,szT) << endl;
	cout << "Somme décroissante absolue : " << somme_abs_decroissante(T,szT) << endl;
	return 0;
}
