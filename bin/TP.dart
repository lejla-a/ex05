// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The TP library.
library TP;

Question1()
{
    String str = 'Hello Word',
           strAvecNombres = 'I am 23 years old';
    RegExp exp = new RegExp(r"[^a-zA-Z ]");
    
    print("La phrase avec seulements les lettres et espaces donne: ");
    print(exp.allMatches(str).length == 0);
    print("La phrase incluant les nombres donne: ");
    print(exp.allMatches(strAvecNombres).length == 0);
}

Question2() 
{
    String strPhrases = "Bonjour. Comment vas-tu. La programmation c'est vraiment difficile.",
           phrasePlusLongue = "",
           phraseCourante = "";
    int longueur = 0,
        compteur = 0;     
    
    for(String uneLettre in strPhrases.split(''))
    {        
        compteur++;
        phraseCourante += uneLettre;
        
        if(uneLettre == "." || uneLettre == "?" || uneLettre == "!")
        {
            phraseCourante = phraseCourante.substring(1, phraseCourante.length);
            
            if(compteur > longueur)
            {
                longueur = compteur;
                phrasePlusLongue = phraseCourante;
            }
            
            compteur = 0;
            phraseCourante = "";
        }
    }
    
    print("La phrase la plus longue est '" + phrasePlusLongue + "'");
}

Question3()
{
    String texte = "Bonjour! Je m'appelle Lejla et j'étudie à l'Université Laval.",
           plusLong = "";
    int longueur = 0;
    
    for(String mot in texte.split(' '))
    {   
        if(mot.contains(".") || mot.contains("?") || mot.contains("!"))
        {
            mot = mot.substring(0, mot.length - 1);
        }
        
        if(longueur < mot.length)
        {
            longueur = mot.length;
            plusLong = mot;
        }
    }
    
    print("Le mot '" + plusLong + "' est le plus long de la phrase.");
}

Question4 (int nombre) 
{
    for (int i = 1; i <= 20; i++) 
    {
        print(i * nombre);
    }
}


Question5(int niveaux)
{
    String starTree = "";
    int dimension = niveaux * 2 - 1,
        nbEtoilesParNiveau;
    double nbEspaces;
       
    for(int i = 1; i <= niveaux; i++)
    {
        nbEtoilesParNiveau = (i * 2) - 1;
        nbEspaces = (dimension - nbEtoilesParNiveau) / 2;
           
        for(int j = 1; j <= nbEspaces; j++)
        {
            starTree += " ";
        }
            
        for(int j = 1; j <= nbEtoilesParNiveau; j++)
        {
            starTree += "*";
        }
            
        starTree += "\n";
    }
    print(starTree);
 }