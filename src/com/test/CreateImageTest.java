package com.test;

import static org.junit.Assert.*;

import java.awt.Image;
import java.awt.image.RenderedImage;
import java.io.File;

import javax.imageio.ImageIO;

import org.junit.Test;

import com.image.CreateImage;

public class CreateImageTest {

	@Test
	public void test() throws Exception {
		CreateImage createImage = new CreateImage();
		Image image = createImage.getImage();
		ImageIO.write((RenderedImage) image, "jpg", new File("E:\\photos\\image.jpg"));
		System.out.println("success");
	}

}
