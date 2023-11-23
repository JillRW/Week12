package com.promineotech;

import java.util.Random;

public class TestDemo {
// created a method that takes 2 ints and adds them if both are positive, or else it throws and IllegalArgumentException
	public int addPositive(int a, int b) {

		int total = a + b;
		if (a > 0 && b > 0) {
			return total;

		} else {

			throw new IllegalArgumentException("Both parameters must be positive!");

		}

	}
	// below is my method that takes 2 ints and multiplies them if both are positive, else throws an IllegalArgumentException
	public int multiplyPositive(int y, int z) {
		int product = y * z;
		if(y > 0 && z > 0) {
			return product;
			
		} else {
			throw new IllegalArgumentException("Positive parameters only!");
		}
	}
	//this is the method used to be mocked = takes a random number (by calling getRandomInt() and squares it
	int randomNumberSquared() {
		int randomNumber = getRandomInt();
		return randomNumber * randomNumber;
	}
	// this method uses the Random class to generate a random number between 1 and 10
	int getRandomInt() {
	  	Random random = new Random();
	 return random.nextInt(10) + 1;
	}

}
