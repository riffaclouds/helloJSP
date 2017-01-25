package com.helloJSP;

import java.util.ArrayList;

public class AutoLijst {
private ArrayList<Auto> autolijst;
    
    /**
     * Constructor die de lijst aanmaakt en auto's toevoegt
     */
    public AutoLijst() {
        autolijst = new ArrayList<Auto>();
        
        Auto tesla1 = new Auto("Tesla", "Model S", 106599, 
            	"images/autos/tesla-model-s-1.jpg");
        autolijst.add(tesla1);
            
        Auto tesla2 = new Auto("Tesla", "Model X", 120450, 
        		"images/autos/tesla-model-x-1.jpg");
        autolijst.add(tesla2);
        Auto lucid1 = new Auto("Lucid", "Air", 130333, 
          "images/autos/lucid-air-0.jpg");
        autolijst.add(lucid1);
        Auto alfa1= new Auto("Alfa Romeo", "147", 500, 
          "images/autos/Alfa-0.jpg");
        autolijst.add(alfa1); 
        Auto ff1 = new Auto("Faraday Future", "FF91", 290000, 
          "images/autos/faraday-future-ff91-1.jpg");
        autolijst.add(ff1);
        Auto porsche1 = new Auto("Porsche", "Mission E", 130999, 
          "images/autos/porsche-0.jpg");
        autolijst.add(porsche1);
        
        Auto ford1 = new Auto("Ford", "Fiesta", 23999, 
          "images/autos/fordfiesta.jpg");
        autolijst.add(ford1);
        Auto ford2 = new Auto("Ford", "Focus", 18995, 
          "images/autos/fordfocus.jpg");
        autolijst.add(ford2);
        Auto opel1 = new Auto("Opel", "Astra", 14895, 
          "images/autos/opelastra.jpg");
        autolijst.add(opel1);
        Auto opel2 = new Auto("Opel", "Insignia", 65450, 
          "images/autos/opelinsignia.jpg");
        autolijst.add(opel2);
        Auto subaru1 = new Auto("Subaru", "Forester", 34750, 
          "images/autos/subaruforester.jpg");
        autolijst.add(subaru1);
        Auto subaru2 = new Auto("Subaru", "Impreza", 28345, 
          "images/autos/subaruimpreza.jpg");
        autolijst.add(subaru2);
        
        Auto mercedes1 = new Auto("Mercedes", "E 63", 110995, 
                "images/autos/mercedede63.png");
        autolijst.add(mercedes1);
        Auto mercedes2 = new Auto("Mercedes", "CLA 45", 190780, 
                "images/autos/mercedescla45.jpg");
        autolijst.add(mercedes2);
        Auto mercedes3 = new Auto("Mercedes", "E 230", 110995, 
                "images/autos/mercedede230.png");
        autolijst.add(mercedes3);
        Auto mercedes4 = new Auto("Mercedes", "C 350", 190780, 
                "images/autos/mercedescc350.jpg");
        autolijst.add(mercedes4);        
        
        Auto ferrari1 = new Auto("Ferrari", "California", 28345, 
                "images/autos/subaruimpreza.jpg");
        autolijst.add(ferrari1);
        Auto ferrari2 = new Auto("Ferrari", "458", 28345, 
                "images/autos/subaruimpreza.jpg");
        autolijst.add(ferrari2);
        Auto lotus1 = new Auto("Lotus", "Elise S CR", 28345, 
        		"images/autos/subaruimpreza.jpg");
        autolijst.add(lotus1);
        Auto lotus2 = new Auto("Lotus", "Elise S CR", 28345, 
        		"images/autos/subaruimpreza.jpg");
        autolijst.add(lotus2);
        Auto volvo1 = new Auto("Volvo", "V 40", 28345, 
        		"images/autos/subaruimpreza.jpg");
        autolijst.add(volvo1);
              
              
        Auto ferrari3 = new Auto("Ferrari", "612 GTO", 350500, 
          "images/autos/ferrari612.jpg");
        autolijst.add(ferrari3);
        Auto citroen1 = new Auto("Citroen", "2CV", 459, 
          "images/autos/citroen2cv.jpg");
        autolijst.add(citroen1);
        Auto mini1 = new Auto("Mini", "Cooper", 34495, 
          "images/autos/minicooper.jpg");
        autolijst.add(mini1);
        
              
        
     }
    
    /**
     * 
     * @return geeft de lijst met auto's
     */
    public ArrayList<Auto> getLijst() {
        return autolijst;
    }
    
    public String pri(){
    	String s = "testing 1, 2!<br><br>";
    	
    	return s;
    }
    
    
    
    /**
     * Ten behoeve van het select merk input veld
     * @return een lijst met alle unieke merken
     */
    public ArrayList<String> getMerken() {
        ArrayList<String> merken = new ArrayList<String>();
        for (Auto auto: autolijst) {
            String merk = auto.getMerk();
            if (!merken.contains(merk)) {
                merken.add(merk);
            }
        }
        return merken;
    }

}
