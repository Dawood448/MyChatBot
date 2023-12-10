import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        title: const Text('Privacy Policy', style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lorem ipsum dolor', style: TextStyle(
                  color: Color(0xff0C8CE9), fontWeight: FontWeight.w700, fontSize: 15
              ),),
              SizedBox(
                height: 10,
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed euismod, diam id aliquam ultrices, nisl nunc aliquet '
                  'nunc, vitae aliquam nunc nisl quis nunc. Sed euismod, diam '
                  'id aliquam ultrices, nisl nunc aliquet nunc, vitae aliquam '
                  'nunc nisl quis nunc. Sed euismod, diam id aliquam ultrices, '
                  'nisl nunc aliquet nunc, vitae aliquam nunc nisl quis nunc. '
                  'Sed euismod, diam id aliquam ultrices, nisl nunc aliquet '
                  'nunc, vitae aliquam nunc nisl quis nunc. Sed euismod, diam '
                  'id aliquam ultrices, nisl nunc aliquet nunc, vitae aliquam '
                  'nunc nisl quis nunc. Sed euismod, diam id aliquam ultrices, '
                  'nunc, vitae aliquam nunc nisl quis nunc', style: TextStyle(
                  color: Color(0xff979797), fontWeight: FontWeight.w400, fontSize: 15
              ),),
              SizedBox(
                height: 10,
              ),
              Text('Terms & Condition', style: TextStyle(
                  color: Color(0xff0C8CE9), fontWeight: FontWeight.w700, fontSize: 15
              ),),
              SizedBox(
                height: 10,
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed euismod, diam id aliquam ultrices, nisl nunc aliquet '
                  'nunc, vitae aliquam nunc nisl quis nunc. Sed euismod, diam '
                  'id aliquam ultrices, nisl nunc aliquet nunc, vitae aliquam '
                  'nunc nisl quis nunc. Sed euismod, diam id aliquam ultrices, '
                  'nisl nunc aliquet nunc, vitae aliquam nunc nisl quis nunc. '
                  'Sed euismod, diam id aliquam ultrices, nisl nunc aliquet '
                  'nunc, vitae aliquam nunc nisl quis nunc. Sed euismod, diam '
                  'id aliquam ultrices, nisl nunc aliquet nunc, vitae aliquam '
                  'nunc nisl quis nunc. Sed euismod, diam id aliquam ultrices, '
                  'nunc, vitae aliquam nunc nisl quis nunc', style: TextStyle(
                  color: Color(0xff979797), fontWeight: FontWeight.w400, fontSize: 15
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
