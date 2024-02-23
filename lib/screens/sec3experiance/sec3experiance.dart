
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import '../section2/widgets/iagecirclebutton.dart';

class Sec3Experiance extends StatefulWidget {
  const Sec3Experiance({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  State<Sec3Experiance> createState() => Sec3ExperianceState();
}

class Sec3ExperianceState extends State<Sec3Experiance> {
  @override
  void initState() {
    constraints = widget.constraints;
    super.initState();
  }

  late BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: constraints.maxHeight * 0.1,
        horizontal: constraints.maxWidth * 0.1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "#work_experiance",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                const Text(
                  "Proficient Flutter Developer with 1+ Years of Successful App Delivery",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
              ],
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * 0.1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: constraints.maxHeight * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  JobExperianceDetailsWidgets(
                    constraints: constraints,
                    companyName: "Brototype - Calicut, Kerala",
                    locationurl: "https://maps.app.goo.gl/yBQL1BhYx53bouqK9",
                    jobTittle: "Flutter Techinical Support",
                    duration: "December 2023 to Present",
                    websiteUrl: "https://brototype.com/",
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  JobExperianceDetailsWidgets(
                    constraints: constraints,
                    companyName: "Astra Software Solutions - Kannangad, Kerala",
                    locationurl: "https://maps.app.goo.gl/D1EKXh96ma92d4y89",
                    jobTittle: "Flutter Developer",
                    duration: "April 2023 to November 2023",
                    websiteUrl: "https://astrasoftwaresolutions.com/",
                  ),
                   SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  JobExperianceDetailsWidgets(
                    constraints: constraints,
                    companyName: "Soften Technologies - Kadavanthara, Kerala",
                    locationurl: "https://maps.app.goo.gl/Fc7PSYWM9B4uLJWL9",
                    jobTittle: "Flutter Developer Intern",
                    duration: "September 2022 to March 2023",
                    websiteUrl: "https://softentec.com/",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class JobExperianceDetailsWidgets extends StatefulWidget {
  final String jobTittle;

  final String companyName;

  final String duration;

  final String locationurl;

  final String websiteUrl;

  const JobExperianceDetailsWidgets({
    super.key,
    required this.constraints,
    required this.jobTittle,
    required this.companyName,
    required this.duration,
    required this.locationurl,
    required this.websiteUrl,
  });

  final BoxConstraints constraints;

  @override
  State<JobExperianceDetailsWidgets> createState() => _JobExperianceDetailsWidgetsState();
}

class _JobExperianceDetailsWidgetsState extends State<JobExperianceDetailsWidgets> {
  bool isonTop=false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit:(e){
         setState(() {
          isonTop=false;
        });
      } ,
      onEnter: (e){
        setState(() {
          isonTop=true;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          border: Border.all(
            color:isonTop?Colors.deepPurple: Colors.grey.withOpacity(0.6),
            width: isonTop?2: 1.0, // Adjust border width as needed
          ),
          borderRadius: BorderRadius.circular(
            ((widget.constraints.maxHeight * widget.constraints.maxWidth) / 100) * 0.0011,
          ),
        ),
        padding: EdgeInsets.all(
            ((widget.constraints.maxHeight * widget.constraints.maxWidth) / 100) * 0.0031),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.jobTittle,
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: widget.constraints.maxHeight * 0.007,
                ),
                Text(
                  widget.companyName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: widget.constraints.maxHeight * 0.01,
                ),
                Text(
                  widget.duration,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                // SizedBox(
                //   height: constraints.maxHeight * 0.025,
                // ),
              ],
            ),
            Column(
              children: [
                IconButtonwithoutline(
                  siteUrl: widget.locationurl,
                  color: Colors.red,
                  icon: Icons.location_on,
                ),
                SizedBox(
                  height: widget.constraints.maxHeight * 0.0121,
                ),
                IconButtonwithoutline(
                  siteUrl: widget.websiteUrl,
                  icon: FontAwesomeIcons.globe,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: widget.constraints.maxHeight * 0.0251,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconButtonwithoutline extends StatelessWidget {
  final IconData? icon;

  final String siteUrl;

  final Color color;

  const IconButtonwithoutline({
    super.key,
    this.icon,
    required this.siteUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        launchURL(siteUrl);
      },
      icon: Icon(icon, color: color),
      // Wrap the IconButton in an OutlinedButton and set the borderSide property
      // to change the outline color to deepPurple.
      style: OutlinedButton.styleFrom(
        side:
            const BorderSide(color: Colors.deepPurple), // Change to deepPurple
      ),
    );
  }
}
