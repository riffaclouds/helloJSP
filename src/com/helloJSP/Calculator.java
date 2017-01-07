package com.helloJSP;

/*
 *Geeft double terug als uitkomst terug voor rekenmachine
 *@author RiffaClouds
 */

public class Calculator {
	double uitkomst = 0;
	
	/*
	  *Geeft uitkomst berekening afhankelijk van functie
	  *@param double arg0
	  *@param double arg1
	  *@param String functie bepaalt type berekening
	  *@return double uitkomst berekening
	  */
	
	public double bereken(double arg0, double arg1, String functie){
		switch(functie){
			case "+": uitkomst = arg0 + arg1;
				break;
			case "x": uitkomst = arg0 * arg1;
				break;
			case "-": uitkomst = arg0 - arg1;
				break;
			case "/": uitkomst = arg0 / arg1;
				break;
		}
		return uitkomst;
	}
	
}
