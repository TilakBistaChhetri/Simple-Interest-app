import 'package:flutter/material.dart';
 void main()
 {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Simple Interest App",
    home:HomePage(),
    ));
 }





 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String result="";
  late String principle="";
  late String rate="";
  late String time="";
  @override
  Widget build(BuildContext context) {
    TextStyle hisStyle = TextStyle(fontSize:25);
    final EnterPrincipleField = TextField(style:TextStyle(fontSize:15),
    onChanged:(val) {
      setState(() {
        principle = val;
      });
    },

    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(17),
      hintText:"Enter principle",
      border:OutlineInputBorder(
        borderRadius:BorderRadius.circular(30),
        ),
    ),
    );


        final rateField = TextField(style:TextStyle(fontSize:15),
    onChanged:(val) {
      setState(() {
        rate= val;
      });
    },

    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(17),
      hintText:"Enter rate",
      border:OutlineInputBorder(
        borderRadius:BorderRadius.circular(30),
        ),
    ),
    );

        final timeField = TextField(style:TextStyle(fontSize:15),
    onChanged:(val) {
      setState(() {
        time = val;
      });
    }, 

    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(17),
      hintText:"Enter time [Months]",
      border:OutlineInputBorder(
        borderRadius:BorderRadius.circular(30),
        ),
    ),
    );
     
     final CalculateButton = Material (
      elevation: 5,
      color:Colors.red,
        borderRadius:BorderRadius.circular(30),
        child:MaterialButton(
          onPressed:() {
              setState(() {
                result= (double.parse(principle)*double.parse(time)*double.parse(rate) /100).toString();
              });

          },
          child:Text("Calculate", style:TextStyle(fontSize:23, color:Colors.white)),
          
          ),


     );

    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:Text("Simple Interest Calculator", style:TextStyle(fontSize:25,)),
        backgroundColor: myColor,
      ),
      body:Center(
        child:Container(
          color:Colors.white,
          padding: EdgeInsets.all(15),
          child:ListView(
            children:[
              SizedBox(height:25),
              EnterPrincipleField,
              SizedBox(height:10),
              rateField,
              SizedBox(height:10),
              timeField,
               SizedBox(height:10),
              CalculateButton,
              SizedBox(height:10),
              Text("Simple Interest is:$result", style:TextStyle(fontSize:20, color:Colors.black, fontWeight:FontWeight.bold)),
              SizedBox(height:100),


              Text("#TilakBista", style:TextStyle(fontSize:24, color:Colors.black, fontWeight:FontWeight.bold)),



            ],
                ), 
              ),

          )
          

    );
  }
}
const myColor = Color(0XFFFF0000);