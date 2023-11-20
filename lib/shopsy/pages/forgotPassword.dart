import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   const Text("Forgot Password",
                     style: TextStyle(color: Color(0xff4B39EF),),),
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: const Color(0xffE9E6E6),
                     hintText: " Enter Register Email",
                     prefixIcon: const Icon(Icons.mail),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide.none,
                     )),
               ),
               const SizedBox(
                 height: 20,
               ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
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
                       "Submit",
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 18),
                     ),
                   ),

                 ],
               ),


             ],
           ),
         ),
       ),
    );
  }
}
