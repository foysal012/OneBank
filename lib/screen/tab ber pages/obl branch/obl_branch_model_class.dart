import 'package:flutter/material.dart';

class OblBranchModelClass{

String? branchName;
String? bManagerName;
String? bManagerimg;
String? bLocationimg;
String? phone;
String? email;
String? location;
String? location1;
String? openingday;
String? openingday1;
String? openingTime;
String? openingTime1;

OblBranchModelClass(
      {this.branchName,
      this.bManagerName,
        this.bManagerimg,
      this.phone,
      this.email,
      this.location,
      this.location1,
      this.openingday,
      this.openingTime,
      this.openingday1,
        this.openingTime1,
        this.bLocationimg,
      });


static List<OblBranchModelClass> generatedBranchList = [
  OblBranchModelClass(
    bManagerName: "Mr. Riton Barua",
    branchName: "Agrabad Branch",
    bManagerimg: "images/w40.jpeg",
    bLocationimg: "images/w50.png",
    phone: "+88 013 456 799",
    email: "info@onebank.com",
    location: "Chattagram",
    location1: "4517 Washington Ave,\nManchester, Kantucky\n29495",
    openingday: "Sun-Thur",
    openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
    openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. Aminul Islam",
      branchName: "Nanupur Bazar\nBranch",
      bManagerimg: "images/w41.jpeg",
      bLocationimg: "images/w50.png",
      phone: "+88  01730-323092",
      email: "manager.nanupurbazar@onebank.com.bd",
      location: "Chattagram",
      location1: "Central Plaza\nNanupur Bazar, Fatickchari",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. Shafiqur Rahman Chowdhury",
      branchName: "Padua Branch",
      bManagerimg: "images/w42.jpeg",
      bLocationimg: "images/w50.png",
      phone: "+88 01711-218557",
      email: "manager.padua@onebank.com.bd",
      location: "Chattagram",
      location1: "N.K. City Shopping\nComplex739-5\nPadua BazarCox's Bazar\nMain RoadLohagara",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mst Elita Karim",
      branchName: "Banani Branch",
      bManagerimg: "images/w43.jpeg",
      bLocationimg: "images/w50.png",
      phone: "(88-02)-9822116-18",
      email: "manager.banani@onebank.com.bd",
      location: "Dhaka",
      location1: "Abedin Tower35,\nKamal Ataturk\nAvenueBanani,",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mst. Rita Khatun",
      branchName: "Elephant Road\nBranch",
      bManagerimg: "images/w44.jpeg",
      bLocationimg: "images/w50.png",
      phone: "+88 013 456 799",
      email: " manager.elephantroad@onebank.com.bd",
      location: "Dhaka",
      location1: "Globe Center\n(1st Floor)216,\nElephant RoadNew Market,",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),

  OblBranchModelClass(
      bManagerName: "Mst. Susuma Sarker",
      branchName: "Hemayetpur Branch",
      bManagerimg: "images/w45.jpeg",
      bLocationimg: "images/w50.png",
      phone: "+8801708-136857",
      email: "manager.hemayetpur@onebank.com.bd",
      location: "Dhaka",
      location1: "Madani Super Market\nHemayetpur Bus Stand\nSavar",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. Md. Nahidul Islam",
      branchName: "Khulna Branch",
      bManagerimg: "images/w46.jpeg",
      bLocationimg: "images/w50.png",
      phone: "01755-579276",
      email: "manager.khulna@onebank.com.bd",
      location: "Khulna",
      location1: "79, Jashore Road\nPicture Palace",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. Md. Arifur Rahman",
      branchName: "Mongla Port Branch",
      bManagerimg: "images/w47.jpeg",
      bLocationimg: "images/w50.png",
      phone: "01715-295170",
      email: "manager.monglaport@onebank.com.bd",
      location: "Bagerhat",
      location1: "Mongla Port Bypass Road\nMongla Port Compound Area\nMongla,",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. Md. Basarul Islam",
      branchName: "Kushtia Branch",
      bManagerimg: "images/w48.jpeg",
      bLocationimg: "images/w50.png",
      phone: "01766-667020",
      email: "manager.kushtia@onebank.com.bd",
      location: "Kustia",
      location1: "Khushi Plaza, 0258 NS Road\nKushtia Sadar",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
  OblBranchModelClass(
      bManagerName: "Mr. A. F. M. Mamunur Rashid",
      branchName: "Rangpur Branch",
      bManagerimg: "images/w49.jpeg",
      bLocationimg: "images/w50.png",
      phone: "01755-579275",
      email: "manager.rangpur@onebank.com.bd",
      location: "Rangpur",
      location1: "Shah Bari Tower\n286, Station Road\nGuptapara",
      openingday: "Sun-Thur",
      openingTime: "(10:00 AM - 04:00 PM)",
      openingday1: "Saturday",
      openingTime1: "(10:00 AM - 12:00 PM)"
  ),
];
}