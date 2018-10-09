package com.ym.demo.test;

import java.io.*;
import java.util.*;

public class LetterGrader {
	private String inFile;
	private String outFile;
	private ArrayList dataList = new ArrayList();//store data elements of the whole text
	private LinkedList nameList = new LinkedList();//the name list to be sorted
	private LinkedList staticName = new LinkedList();//the name list in creating sort
	private LinkedList letterGrade = new LinkedList();//the list of letter grade
	private ArrayList numberGrade = new ArrayList();//student weighted score list
	private ArrayList flipList = new ArrayList();//get the flip list of numbers

	public LetterGrader(String inFile, String outFile) {
		this.inFile = inFile;
		this.outFile = outFile;
	}


	public void readScore() throws FileNotFoundException, IOException {
		try {
			Scanner readInput = new Scanner(new File(inFile));//read the file

			while (readInput.hasNextLine()) {
				String line = readInput.nextLine();
				String [] lineList = line.split(",");//this is actually the single line list
				nameList.addLast(lineList[0]);//add name to nameList
				staticName.addLast(lineList[0]);//add name to staticName
				dataList.add(lineList);	//add the single line in lineList

			}
			readInput.close();
		}catch (IOException e) {
			System.out.println(e.getMessage());//get error message
		}
		System.out.println();
	}

	public void calcLetterGrade() {//calculate the weighted score of each student
		int i = 0;

		while (i< dataList.size()) {
			String[] person = (String[]) (dataList.get(i));//assign the data of a line to person

			double finalGrade = Double.parseDouble(person[1])*0.1+Double.parseDouble(person[2])*0.1
					+Double.parseDouble(person[3])*0.1 + Double.parseDouble(person[4])*0.1
					+Double.parseDouble(person[5])*0.2 + Double.parseDouble(person[6])*0.15
					+Double.parseDouble(person[7])*0.25;
			numberGrade.add(finalGrade);//to get the list of scores
			i++;
		}
	}

	public void printGrade() throws IOException {
		getLetterGrade();
		nameList.sort(null);//sort the name by natural order
		String name;
		String letter;
		int index;

		try {
			File outputFile = new File(outFile);
			PrintWriter output = new PrintWriter(outputFile);

			for(int i=0; i<nameList.size();i++) {
				name = (String) nameList.get(i);//get the name in sorted order
				index = staticName.indexOf(name);//get the index of the name in natural name array list
				letter = (String) letterGrade.get(index);//get the letter grade based on the above index
				output.println(name+":       "+"\t"+letter);
			}
			output.close();
		}catch(IOException e) {
			System.out.println("An error with output file");
		}
	}

	private void getLetterGrade() {//turn the weighted score into letter grade
		for(int n =0; n<numberGrade.size();n++) {
			double grade = (double) numberGrade.get(n);
			if(grade >= 90) {
				letterGrade.addLast("A");
			}else if (grade >= 80) {
				letterGrade.addLast("B");
			}else if (grade >= 70) {
				letterGrade.addLast("C");
			}else if (grade >= 60) {
				letterGrade.addLast("D");
			}else {
				letterGrade.addLast("F");
			}
		}
	}

	public void displayAverages() {
		getFlipList();

		double[] averageL = new double[7];//the average score array of each task
		double[] minL = new double[7];//the minimum score array of each task
		double[] maxL = new double[7];//the maximum score array of each task
		for(int i = 0; i< flipList.size(); i++) {
			ArrayList ls = (ArrayList) flipList.get(i);
			double value = getAverage(ls);
			double min = getMin(ls);
			double max = getMax(ls);

			averageL[i]=value;
			minL[i] = min;
			maxL[i] = max;
		}
		System.out.println("Letter grade has been calculated for students "
				+ "listed in input file input_data.txt and written to\noutput file output_data.txt\n");
		System.out.println("Here is the class averages:");
		System.out.println("\t"+"Q1"+"\t"+"Q2"+"\t"+"Q3"+"\t"+"Q4"
		+"\t"+"Midl"+"\t"+"Midll"+"\t"+"Final");
		System.out.print("Average:");
		for (int i = 0; i<averageL.length;i++) {
			System.out.printf("%.2f\t", averageL[i]);
		}
		System.out.println();
		System.out.print("Minimum:");
		for (int i = 0; i<minL.length;i++) {
			System.out.printf("%.0f\t", minL[i]);
		}
		System.out.println();
		System.out.print("Maximum:");
		for (int i = 0; i<maxL.length;i++) {
			System.out.printf("%.0f\t", maxL[i]);
		}

		System.out.println("\n\nPress ENTER to continue . . .");
	}

	private void getFlipList() {//flip the dataList

		for(int i=1; i<8 ;i++) {//i is the number of column
			ArrayList quiz = new ArrayList();
			for(int j = 0 ; j<dataList.size(); j++) {//j is the number of rows
				String[] st = (String[]) dataList.get(j);
				quiz.add(Double.parseDouble(st[i]));
			}
			flipList.add(quiz);
		}
	}

	private double getAverage(ArrayList dl) {//get the average value of an ArralyList
		double sum = 0;
		double average;

		for(int i =0; i<dl.size();i++) {
			sum += (double)dl.get(i);
		}
		average = sum/dl.size();
		return average;
	}
	private double getMax(ArrayList dl) {//get the max value of an ArralyList
		double max = 0;
		for(int i =0; i<dl.size();i++) {
			double v = (double) dl.get(i);
			if (v>max) {
				max = v;
			}
		}
		return max;
	}

	private double getMin(ArrayList dl) {//get the minimum value of an ArralyList
		double min = 100;
		for(int i =0; i<dl.size();i++) {
			double v = (double) dl.get(i);
			if (v<min) {
				min = v;
			}
		}
		return min;
	}
}

