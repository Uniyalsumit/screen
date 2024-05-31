import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
    @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.white,
      body: _loginpage(),
    );
  }
}
Widget _loginpage()
{
   return Padding(padding: const EdgeInsets.only(left: 40,right:40,top: 0),
   child: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         _logo(),
         const SizedBox(width:357,height: 10),
         _extraText(),
         const SizedBox(width:357,height: 32),
         _inputField("E-mail"),
         const SizedBox(height: 32),
         _inputField("Password"),
         // const SizedBox(height: 46),
         // _loginBtn(),

       ]
     ),
   ),
  );
}
Widget _logo()
{
  return Container(
  width: 277,
  height: 150,
  //padding: const EdgeInsets.only(left: 80,top: 25,right: 80,bottom: 0),
  child: Image.asset('assets/Dit-dehradun-logo.jpeg'),
  );
}

Widget _extraText()
{
   //String mytext=htext;
  return const Text('Welcome to DIT University',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20, color:Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w400),
  );
}

Widget _inputField(String hintText)
{

   return TextField(
        style: const TextStyle(color:  Color.fromRGBO(0, 0, 0, 1)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(217, 217, 217, 1),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)
          ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
      ),
    );
}

