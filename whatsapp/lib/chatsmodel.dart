import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatModel {
  var profile_pic;
  final String title;
  final String message;
  final String time;
  chatModel(
      {this.profile_pic =
          "https://thumbs.dreamstime.com/b/default-avatar-profile-image-vector-social-media-user-icon-potrait-182347582.jpg",
      required this.title,
      required this.message,
      required this.time});
}

List<chatModel> chatData = [
  chatModel(
      profile_pic: "https://www.asianews.it/files/img/IMG-20220321-WA0004.jpg",
      title: "Sister",
      message: "Bhai ghar nhi ana teri pant sy cigrette ka dabba mila hy",
      time: "02:35 AM"),
  chatModel(
      profile_pic: "https://static.toiimg.com/photo/msid-83633420/83633420.jpg",
      title: "Mummy",
      message: "Beta tumhari pasand ka khana bna hy khn ho. jaldi aao",
      time: "02:32 AM"),
  chatModel(
      profile_pic:
          "https://images.unsplash.com/photo-1609770653328-a4d1dd377970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aW5kaWFuJTIwbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      title: "Bhai",
      message: "Ghr ajao jaldi",
      time: "02:30 AM"),
  chatModel(
      profile_pic:
          "https://www.out.com/sites/default/files/styles/vertical_gallery_desktop_1x/public/2018/10/25/01.jpg?itok=q1OuqOUO&timestamp=1540489509",
      title: "Papa",
      message: "Tumharay liyay ek suprise hy. jaldi aao",
      time: "02:25 AM"),
  chatModel(
      title: "john office",
      message: "kl yaad sy send krdena bhai",
      time: "yesterday"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIak8kkAcgd9FhlqRasRlU6jhcuWuX71PqgA&usqp=CAU",
      title: "Shahzeb SAIMS",
      message: "assigment kahan hy bhai ???",
      time: "01/10/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4reR9SVKo2vvdhaoiSk6cS_DTpR0W_SiDTA&usqp=CAU",
      title: "Ahmed SAIMS",
      message: "Youtube sy dekh lo youtube pr sub mily ga",
      time: "05/10/22"),
  chatModel(
      profile_pic: "http://im.rediff.com/money/2011/jan/03startup1.jpg",
      title: "Owais SAIMS",
      message: "Assigment sb ny khud krna hy apna. koi cheating nhi kry ga",
      time: "02/10/22"),
  chatModel(
      profile_pic:
          "https://d30fs77zq6vq2v.cloudfront.net/product/1080x1619/06102022/16394_348_1665040663_633e8117561c7-1324267939110.jpg",
      title: "Laiba",
      message: "Suno abba nhi mil rhy...",
      time: "24/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBMronvc0iSD9LaP_AkuHmy2xoWLld8z1O4Q&usqp=CAU",
      title: "Shani bhai",
      message: "utha liya bhuday ko",
      time: "23/09/22"),
  chatModel(
      profile_pic:
          "https://d30fs77zq6vq2v.cloudfront.net/product/1080x1619/06102022/16394_348_1665040663_633e8117561c7-1324267939110.jpg",
      title: "Laiba",
      message: "Abba nahi man rhy.",
      time: "23/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1nE0B76SrSkqXRuYp1LLUuDbB1EHOZMYtLw&usqp=CAU",
      title: "Naqi",
      message: "Ammi mana kr rhi hn.",
      time: "22/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEP7PoxjX0BeedhE7gAgd5rbBZvMTNDyqgw2TdzCCkJBlGrTcf2MWINs0Zdc9NgmuViao&usqp=CAU",
      title: "Saif",
      message: "Link share krdo",
      time: "21/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD81TtLW54HIXZW0l3yVKKFdrNT-HOzJz64Q&usqp=CAU",
      title: "Zeeshan",
      message: "Saddar chal raha hy. kaam hy  ???",
      time: "21/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSyyRByBFuvME7wxeKGN-_t5PF_5y0ZouKA&usqp=CAU",
      title: "Kamran",
      message: "Kl hotel pr milo",
      time: "20/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqrtg632L5CMYjkHJzjLB1Sy2fB7iO0ErulA&usqp=CAU",
      title: "Sherjil",
      message: "Jani khn ho ?",
      time: "19/09/22"),
  chatModel(
      profile_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo_Ii3EkmX66E3oWzT0Rgm_kzvXM47or9DuQ&usqp=CAU",
      title: "Mubashir",
      message: "Paisa krado kuch ?",
      time: "19/09/22"),
];
