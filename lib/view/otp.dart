import 'package:chatapp/view/emptychathistory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              const Center(
                child: Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              const Text('Enter the OTP sent to', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
              const Text('example@gmail.com', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff979797),
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              OtpTextField(
                numberOfFields: 4,
                fieldWidth: 60,
                obscureText: false,
                filled: true,
                disabledBorderColor: Colors.transparent,
                borderWidth: 0,
                fillColor: const Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(10),
                showFieldAsBox: true,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              const Text('00:120 Sec', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff979797),
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t receive code? ', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff999999),
                  ),),
                  Text(
                    'Re-send',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0C8CE9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EmptyChat()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff0C8CE9),
                    ),
                    child: const Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
