package com.mkpp.bookstore.service;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mkpp.bookstore.model.Image;
import com.mkpp.bookstore.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.util.Map;

@Service
public class ImageUploader {

    private Cloudinary cloudinary;

    @Autowired
    private ImageRepository imageRepository;

    public ImageUploader(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
        cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "",
                "api_key", "",
                "api_secret", ""
        ));
    }
    public String uploadFileAndSveToDb(String path) {
        File file = new File(path);
        Map uploadResult = null;
        try {
            uploadResult = cloudinary.uploader().upload(file, ObjectUtils.emptyMap());
            imageRepository.save(new Image(uploadResult.get("url").toString()));
        } catch (IOException e) {
            //todo
        }
        return uploadResult.get("url").toString();
    }

    public Image addImage(String path) {
        String uploadedImage = uploadFileAndSveToDb(path);
        Image image = new Image(uploadedImage);
        return image;
    }

    public Image getImageByPath(String imageAddress) {
        return imageRepository.findByImageAddress(imageAddress).get();
    }
}
