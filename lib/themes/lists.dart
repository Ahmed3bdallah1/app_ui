import 'package:flutter/material.dart';
import '../models/card_details.dart';
import '../models/contacts.dart';

const cardDetails = [
  CardDetail(
    cardBgAsset: 'assets/card6.jpg',
    balance: '200,000.20',
    cardNumber: '4657',
  ),
  CardDetail(
      cardBgAsset: 'assets/card3.jpg',
      balance: '8,900.30',
      cardNumber: '3486'),
  CardDetail(
      cardBgAsset: 'assets/card2.jpg',
      balance: '520,800.90',
      cardNumber: '6343'),
  CardDetail(
      cardBgAsset: 'assets/card4.jpg',
      balance: '230,800.90',
      cardNumber: '6344'),
];

final contactsList = [
  Contact(
      color: Colors.red.withOpacity(0.1),
      name: 'Ahmed',
      amount: '50.60',
      profileAsset: 'assets/avatar.png'),
  Contact(
      color: Colors.teal.withOpacity(0.1),
      name: 'Abdo',
      amount: '80.20',
      profileAsset: 'assets/avatar.png'),
  Contact(
      color: Colors.purple.withOpacity(0.1),
      name: 'Sayed',
      amount: '200.90',
      profileAsset: 'assets/avatar.png'),
  Contact(
      color: Colors.orange.withOpacity(0.1),
      name: 'Ahmed',
      amount: '60.70',
      profileAsset: 'assets/avatar.png'),
];
