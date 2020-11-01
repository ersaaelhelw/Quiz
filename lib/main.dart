import 'package:flutter/material.dart';

import 'Screens/QuestionScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.indigo,
          accentColor: Colors.amberAccent[700],
          errorColor: Colors.red[700]),
      home:LoginPage (),
    );
  }
}

class LoginPage extends StatefulWidget

{
  @override
 _LoginPage createState()=>_LoginPage();

}
class _LoginPage extends State<LoginPage>
{
  final TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: TextField(
               controller: _controller,
               decoration: InputDecoration(
                 labelText:'Enter your name'

               ),

             ),
           ),
           RaisedButton(onPressed: ()
             {  Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => QuestionScreen()),
             );},
             child: Text('Click to start')

       ,)
         ],
       ),
     ),

   );
  }



}



