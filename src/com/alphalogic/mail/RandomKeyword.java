package com.alphalogic.mail;

import java.util.Random;

public class RandomKeyword {
	public static void main(String[] args){
		int length =16;
		System.out.println(generatekey(length));
	}
	
	public static char[] generatekey(int len){
		System.out.println("Your status");
		String charsCaps="ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
        String Chars="abcdefghijklmnopqrstuvwxyz";
        String nums="0123456789";
        String symbols="!@#$%^&*()_+-=.,/';:?><~*/-+";
        String keySymbols=symbols+charsCaps + Chars + nums;
        Random rand=new Random();
        char[] keyword=new char[len];
        for(int i=0; i<len;i++){
            keyword[i]=keySymbols.charAt(rand.nextInt(keySymbols.length()));
        }
      return keyword;
	}
}
