import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Contatos
const String kInstagramLink = 'https://www.instagram.com/seewave.tech/';
const String kWhatsAppLink = 'http://wa.me/5563991216073';
const String kEmailLink = 'mailto:contato@seewave.tech';

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Contact
final kContactIcons = [
  Icons.photo_camera,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Instagram",
  "Telefone",
  "E-mail",
];

final kContactDetails = [
  "@seewave.tech",
  "+55 (63) 99121-6073",
  "contato@seewave.tech"
];
