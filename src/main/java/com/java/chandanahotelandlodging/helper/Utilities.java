package com.java.chandanahotelandlodging.helper;

public class Utilities
{
    public static int generateRandomNumber(int numberOfDigits) {
        int min = (int) Math.pow(10, numberOfDigits - 1);
        int max = (int) Math.pow(10, numberOfDigits) - 1;
        return (int) (Math.random() * (max - min + 1) + min);
    }
}
