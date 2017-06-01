package com.image;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import javax.imageio.ImageIO;

import javafx.scene.transform.Rotate;

public class CreateImage {
	
	char[] chars = {
			
		'1','2','3','4','5','6','7','8','9','0',
		'a','b','c','d','e','f','g','h','i','j'
	};
	
	Color[] colors = {
	    Color.blue,Color.green,
	    Color.orange,Color.red
	};
    
	public String getRandomNumber (int count) {
	  StringBuffer s = new StringBuffer();
	  Random random = new Random();
	  for (int i =0;i<count;++i) {
		  int number = random.nextInt(20);
		  s.append(chars[number]);
	  }
	  return s.toString();
	}
	
	public BufferedImage getImage() throws Exception {
		
		ThreadLocalRandom random = ThreadLocalRandom.current();
		int maxDegree = 15;
		BufferedImage image = new BufferedImage(200, 60, BufferedImage.TYPE_INT_ARGB);
		image = ImageIO.read(new File("E:\\photos\\test.jpg"));
	    image = image.getSubimage(0, 0, 200, 100);
	    Graphics2D g = (Graphics2D) image.getGraphics();
	    Font font = new Font("ËÎÌו", Font.BOLD, 30);
	    g.setFont(font);
	    g.translate(40, 0);
	    String randomNumber = this.getRandomNumber(4);
	    System.out.println(randomNumber);
	    for(int i = 0;i<randomNumber.length();++i) {
	    	g.setColor(colors[random.nextInt(0, 4)]);
	    	int degree = random.nextInt(-maxDegree,maxDegree);
	    	g.rotate(degree * Math.PI / 180);
	    	g.drawString(String.valueOf(randomNumber.charAt(i)), 0,image.getHeight()/2);
	    	g.rotate(-degree*Math.PI/180);
	    	g.translate(30, 0);
	    }
	    g.dispose();
		return image; 
		
	}
}
