import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CircularImageButton extends StatelessWidget {
  final BoxConstraints constraints;
  
  final String imageurl;
  
  final String siteUrl;
  const CircularImageButton({super.key, required this.constraints, required this.imageurl, required this.siteUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchURL(siteUrl);
      },
      
      child: Container(
        width: (constraints.maxHeight*constraints.maxWidth/100)*0.008,
        height: (constraints.maxHeight*constraints.maxWidth/100)*0.008,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.deepPurple,
            width: (constraints.maxHeight*constraints.maxWidth/100)*0.0003,
          ),
        ),padding: EdgeInsets.all( (constraints.maxHeight*constraints.maxWidth/100)*0.001),
        child: ClipOval(
          child: Image.network(
            imageurl, // Replace with your image URL
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}


Future<void> launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
