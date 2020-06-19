package com.duc.controller;


import org.springframework.context.ResourceLoaderAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

public class CustomLoader implements ResourceLoaderAware{
	private ResourceLoader resourceLoader;
	public void setResourceLoader(ResourceLoader argO) {
		resourceLoader=argO;
		
	}
	public Resource getResource(String Url) {
		return resourceLoader.getResource(Url);
		
	}


}
