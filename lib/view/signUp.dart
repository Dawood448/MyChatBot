import 'package:chatapp/view/mainWrapper.dart';
import 'package:chatapp/view/signIn.dart';
import 'package:chatapp/widgets/loadingbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  bool isLoading = false;
  bool showPassword = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  const Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .1),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: const Text(
                        'Fill your information below or register or login with your account.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'First Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: firstNameController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF4F6F9),
                        hintText: 'Adnan',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Last Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: lastNameController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF4F6F9),
                        hintText: 'Dani',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF4F6F9),
                        hintText: 'example@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !showPassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF4F6F9),
                        hintText: '********',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: showPassword,
                            onChanged: (value) {
                              setState(() {
                                showPassword = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Show Password',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff999999),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if(firstNameController.text.trim().isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("First Name is required")));
                          return;
                        }

                        if(lastNameController.text.trim().isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Last Name is required")));
                          return;
                        }


                        if(emailController.text.trim().isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email is required")));
                          return;
                        }

                        RegExp emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );
                        if(!emailRegex.hasMatch(emailController.text.trim().toString())){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please enter a valid")));
                          return;
                        }

                        if(passwordController.text.trim().toString().isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password cannot be empty")));
                          return;
                        }

                        if(passwordController.text.trim().toString().length < 3){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password length should be greater than 3")));
                          return;
                        }

                        setState(() {
                          isLoading = true;
                        });

                        auth.createUserWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value) async{
                          await value.user?.updateDisplayName("${firstNameController.text.toString()} ${lastNameController.text.toString()}").then((value) {
                                setState(() {
                                  isLoading = false;
                                });
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                                  return const MainWrapper();
                                },), (route) => false,);
                              }).onError((error, stackTrace){
                                setState(() {
                                  isLoading = false;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
                              });
                          });

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
                            'Sign Up',
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: 1,
                        color: const Color(0xffE0E0E0),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'or',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff999999),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: 1,
                        color: const Color(0xffE0E0E0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?', style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff999999),
                      ),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                      }, child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0C8CE9),
                        ),
                      ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if(isLoading)
          // loading bar
            const LoadingBox()
        ],
      ),
    );
  }
}
