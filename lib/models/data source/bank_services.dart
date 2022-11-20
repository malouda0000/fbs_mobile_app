import 'package:fbs_mobile_app/models/modles/bank_services.dart';
import 'package:flutter/material.dart';

final List<BankServices> theBankingservices = [
  BankServices(
    title: 'telcom services',
    theIcon: Icons.satellite_alt_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'balance inquiry',
    theIcon: Icons.wallet_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'internet services',
    theIcon: Icons.network_wifi_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'money transfare',
    theIcon: Icons.attach_money_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'fundraising',
    theIcon: Icons.share_rounded,
    isUnderDev: false,
  ),

  ////////////////////
  ///
  ///
  ///
  BankServices(
    title: 'higher education',
    theIcon: Icons.school_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'fuel services',
    theIcon: Icons.gas_meter_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'E-Gove',
    theIcon: Icons.local_police_rounded,
    isUnderDev: false,
  ),

  BankServices(
    title: 'taxi services',
    theIcon: Icons.local_taxi_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'payees',
    theIcon: Icons.payment_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'donations',
    theIcon: Icons.card_giftcard_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'haboob',
    theIcon: Icons.local_hotel_rounded,
    isUnderDev: false,
  ),
];
