import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPageProvider extends ChangeNotifier
{
  void phone ()
  {
    Uri uri =Uri.parse("tel:+91 9316925877");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void sms ()
  {
    Uri uri =Uri.parse("sms:+91 9316925877");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void github()
  {
    Uri uri =Uri.parse("https://github.com/sumitpatil21");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void instagram ()
  {
    Uri uri =Uri.parse("https://www.instagram.com/");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void Mail ()
  {
    Uri uri =Uri.parse("mailto:namesam927@gmail.com");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
  void Linkdin ()
  {
    Uri uri =Uri.parse("https://www.linkedin.com/in/sumit-patil-4b7a63311/");
    launchUrl(uri,mode: LaunchMode.externalApplication);
  }
}