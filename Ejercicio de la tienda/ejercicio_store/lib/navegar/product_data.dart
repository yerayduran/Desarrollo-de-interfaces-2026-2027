import 'package:flutter/material.dart';

class ImageData {
  final String title;
  final String imageUrl;
  final String description;

  const ImageData({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
const List<ImageData> items = [
  ImageData(
    title: 'Burger Classic',
    description: "Queso, carne y bacon - 8.50€",
    imageUrl: 'https://imgs.search.brave.com/qmtKVvNVf-iQALzCwKIvjJh8tp1y4n2Gdr9cmPvFDeM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNDIv/ODg0LzU0NS9zbWFs/bC9hLWRlbGljaW91/cy1oYW1idXJnZXIt/cG5nLnBuZw',
  ),
  ImageData(
    title: 'Pizza Pepperoni',
    description: "Queso mozarella - 10.00€",
    imageUrl: 'https://imgs.search.brave.com/IpD4nuTlm1abcM67D9EBe-4IRznT3zfXKsRzdGKnojE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTc4/OTg5NTQwMC9waG90/by9oZWFydC1zaGFw/ZWQtcGVwcGVyb25p/LXBpenphLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz12WmZ1/UWRtRTY1MEphWGdp/TXQ1bG5JU05yc3Ji/LUFuSk5KRWlPeTNO/UU1VPQ',
  ),
  ImageData(
    title: 'Taco al pastor',
    description: "3 unidades con piña - 7.00€",
    imageUrl: 'https://imgs.search.brave.com/QiCJcSvdyKqmMQ2UQk2X75CyxW-uabUeSH9rXJrmzxU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dGFzdGluZ3RhYmxl/LmNvbS9pbWcvZ2Fs/bGVyeS90YWNvcy1w/YXN0b3ItaGlzdG9y/eS9hLXRhY28tYW5k/LWEtc2hhd2FybWEt/d2Fsay1pbnRvLWEt/YmFyLTE2NDIxNzM0/OTEuanBn',
  ),
];