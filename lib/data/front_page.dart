
import 'package:flutter/material.dart';

class SliderModel{

  String imagePath;
  String title;
  String desc;
  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagepath){
    imagePath= getImagepath;
  }
  void setTitle(String getTitle){
    title= getTitle;
  }
  void setDesc(String getDesc){
    desc= getDesc;
  }
  String getImageAssetPath(){
    return imagePath;
  }
  String getTitle(){
    return title;
  }
  String getDesc(){
    return desc;
  }
}


List<SliderModel> getSlides(){
  List<SliderModel> slides= new List<SliderModel>();
  SliderModel sliderModel= new SliderModel();

  sliderModel.setImageAssetPath("images/winner-frontpage.png");
  sliderModel.setTitle("Latest Hackathon Winner");
  sliderModel.setDesc("Mobile Money SC Ruby App");
  slides.add(sliderModel);

 sliderModel= new SliderModel();

  sliderModel.setImageAssetPath("images/winner-frontpage.png");
  sliderModel.setTitle("Latest Hackathon Winner");
  sliderModel.setDesc("Mobile Money SC Ruby App");
  slides.add(sliderModel);

 sliderModel= new SliderModel();

  sliderModel.setImageAssetPath("images/winner-frontpage.png");
  sliderModel.setTitle("Latest Hackathon Winner");
  sliderModel.setDesc("Mobile Money SC Ruby App");
  slides.add(sliderModel);

  sliderModel= new SliderModel();
  return slides;
}