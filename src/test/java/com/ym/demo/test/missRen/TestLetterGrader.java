package com.ym.demo.test.missRen;

import java.io.IOException;

public class TestLetterGrader {

	public static void main(String[] args) throws IOException {
		LetterGrader letterGrader = new LetterGrader(args[0], args[1]);
		letterGrader.readScore();
		letterGrader.calcLetterGrade();
		letterGrader.printGrade();
		letterGrader.displayAverages();	
	}
}
