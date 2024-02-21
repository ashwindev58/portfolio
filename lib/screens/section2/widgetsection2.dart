import 'package:ashwin_k/screens/section2/widgets/iagecirclebutton.dart';
import 'package:flutter/material.dart';


  const email = 'ashwinkannoth58@gmail.com'; // Replace with the recipient's email
    const subject = 'Hello from Flutter App';
    const body = 'This is the message body.';

    final mailtoLink = 'mailto:$email?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';


class WidgetSection2 extends StatelessWidget {
  final BoxConstraints constraints;
  const WidgetSection2({super.key, required this.constraints});

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
                  "#about_me",
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
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: constraints.maxHeight*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularImageButton(
                      constraints: constraints,siteUrl:"https://profile.indeed.com/p/ashwink-b47l20m",
                      imageurl:
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAflBMVEUAAAD///////////////////////////////////////////////+/zuZvkMZQd7pAa7Sgtdnv8/gAOptgg8AgUqcgU6evweCAnc0QRqF/nc3v8vhwkMcwXq3f5vLP2uz////f5/JfhMB/nM0wX66AnM1PeLqPqdOftdrv8/mN6/jEAAAAIXRSTlMAEGCfz+//XyCQj98w/////////////////////////6AQ1BAWAAABD0lEQVR4AYWThRZCIQxAR+11h939/z+oHECHGNd4sbvR8IJxIRWikiJiEBInCl+IGHxYim+kfnqGARkpkj/jRVnVVdMaIw/yi7qr+7IaxolXg7n4dDZfGHEojGFG4/q3XK3RsSE9jV3+SqevC6ToRrbmdjc84m3ddeOOCAkAQ8Oo6++7BzURFANuB3DQ/8dOgwTuWjjpAnjW8YEKAqS5KU0dLVyoIEGZYdnOr8veH4YCN+5vWGGBVtxc68IXFFLqrus8QYH8LUjY/hYE8N9CBEz9FBhA8ksQZLmpQJeblAiFxNtyoZCxYNMvu252CzY+2fa3fVU84/nfg0NgyXs8YeATb0lUJTGEML61x5+T7DuGyRy8BcS3+wAAAABJRU5ErkJggg==',
            
                    ),
                    SizedBox(width: constraints.maxWidth*0.015,),
                    CircularImageButton(
                      constraints: constraints,siteUrl: "https://api.whatsapp.com/send/?phone=918086850403",
                      imageurl:
                          'https://raw.githubusercontent.com/ashwindev58/images/73bb69b936884bb504ef3c7602a3de460fbc9e7a/whatsap.png',
            
                    ),
                    SizedBox(width: constraints.maxWidth*0.015,),
                    CircularImageButton(
                      constraints: constraints,siteUrl: "https://www.linkedin.com/in/ashwin-k-759a82227?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                      imageurl:
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEX9+vX///f++/X09fMAWr/W4OsAYcH5+PQAVr56nNMATLsAXL8AUb3///nw8vIAX8CMqdfq7fAASLsKZsKkut3C0OWZs9rj6O6Vr9kAQbmuwd+8y+NFfsl+oNTW3Olqkc8uc8YAObddis0ebMQ9eMdPg8pul9FesxvkAAABsUlEQVRIie2TbXOjIBRGuYBioiIoLykGsWbj//+JCzZpm5om2/22sx5nmLngQZAHhDY2Nv4X4B28Gks9+NKNb4YxhsPugmdfTUkwwqm5FjdDtBmbPFFltyImrwYQbidIBXsx8DHEWgPU1acuQVfiXgGCPlv2wSqVdpOe1FAFzS/R0JLS/BvxbNRxzgVUjo8+G+mE2FSGXAEVtpGOy2NxX+yEKQ6hkoUZR1IY2RhBnSiiaOoSpAC93uM+rS6KtNZ7W+aFHeipa8Ix1HV+EU1rh/1KrHa9k1EsIYqFOh35XhGHp87q6xdNdU9si6p1nT9UoF9sq4ZWuKooMpu3p9IsYq3uiAiRCCOMEcwIIgwTDsSmJFgcK5p3TZc363NM8YgvLU3MEF7C81akCpS4skrOYx5k9WcTfcCGW5PZP5sJ85jSGK/3NXG/hO7eNfoiBoA+9DyI3njlvXa9CFjNgjw2k8i6/jRx688ocJHNInNmV5/5M/Es5WjVnGk/1aEWwyykUwEdn4iIHQ4u85oJpXvosZa95oPV5qmI3i5g/B3LieMF8POnG/0T4mx/5W1sbPwb/AaC4RxEdWUvFgAAAABJRU5ErkJggg==',
            
                    ),
                    SizedBox(width: constraints.maxWidth*0.015,),
            
                     CircularImageButton(
                      constraints: constraints,siteUrl: "https://github.com/ashwindev58",
                      imageurl:
                          'https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png',
            
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * 0.1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: constraints.maxHeight * 0.07),
              child: const Text(
                '''Innovative and results-oriented Flutter Developer with 1 year of hands-on experience in delivering impactful cross-platform applications. Proven success in launching cutting-edge solutions on both App Store and  Play Store. Proficient in an array of programming languages, including C,C++, java oops, Dart, and PHP Codignator. Acknowledged for problem-solving prowess and a commitment to optimizing app performance. A collaborative team player with expertise in Flutter Bloc, Git version management,  and seamless API integration. Eager to contribute technical proficiency and creative insights to elevate user experiences in dynamic app development.Open to relocation for compelling opportunities and ready to impress with a  track record of excellence in the Flutter development landscape.''',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
