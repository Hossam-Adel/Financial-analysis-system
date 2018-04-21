package model;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;


public class ReadCSV {
	 public ArrayList<String> read() {

	        String csvFile = "C://Users/hossam/Desktop/graphs.txt";
	        BufferedReader br = null;
	        String line = "";
	        String cvsSplitBy = ",";
	        ArrayList<String> al = new ArrayList<String>();
	        try {

	            br = new BufferedReader(new FileReader(csvFile));
	            while ((line = br.readLine()) != null) {

	                // use comma as separator
	                al.add(line);
	                
	                

	            }
	            
	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } finally {
	            if (br != null) {
	                try {
	                    br.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	        
	        return al;
	    }

}
