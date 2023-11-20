import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
           child: Column(
             children: [
               const SizedBox(
                 height: 40,
               ),
               const Text(
                 "Shopsy",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                     fontSize: 30,
                     color: Color(0xff4B39EF),
                     fontWeight: FontWeight.bold),
               ),
               const SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: const Color(0xffE9E6E6),
                     hintText: " Enter Email",
                     prefixIcon: const Icon(Icons.mail),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide.none,
                     )),
               ),
               const SizedBox(
                 height: 20,
               ),
               TextField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: const Color(0xffE9E6E6),
                     hintText: " Enter phone",
                     prefixIcon: const Icon(Icons.phone),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide.none,
                     )),
               ),
               const SizedBox(
                 height: 20,
               ),
               TextField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: const Color(0xffE9E6E6),
                     hintText: " Enter Password",
                     prefixIcon: const Icon(Icons.password),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide.none,
                     )),
               ),
               const SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       minimumSize: const Size(150, 40),
                       backgroundColor: const Color(0xff4B39EF),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8.0),
                       ),
                     ),
                     onPressed: () {},
                     child: const Text(
                       "Register",
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 18),
                     ),
                   ),

                 ],
               ),
               const SizedBox(height: 30),
               GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                  },
                 child: const Text(
                   "Already Have an Account?? Login",
                   style: TextStyle(
                     fontSize: 20,
                     color: Color(0xff4B39EF),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}
