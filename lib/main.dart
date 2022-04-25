// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body: Table(
          border: TableBorder.all(
            width: 2,
            color: Colors.black,
          ),
          // defaultColumnWidth:
          // FixedColumnWidth(70),
          // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          // textDirection: TextDirection.ltr,
          // textBaseline: TextBaseline.ideographic,
          children: [
            data(),
            data1("1", "Iqra", "300", "270", "90"),
            data1("2", "Falak","300", "100", "36"),
            data1("3", "Linta", "300", "240", "82"),
            data1("4", "Tahira", "300", "170", "69"),
            data1("5", "Abrish", "300", "180", "72"),
            data1("6", "Rida", "300", "259", "75"),
            data1("7", "Jaweria", "300", "290", "93"),
            data1("8", "Hafsa", "300", "245", "83"),
            data1("9", "Beenish", "300", "100", "36"),
            data1("10", "Noor_Ul_Ain", "300", "120", "45"),
          ]
        ),
      ),

);
        
      
    
  }
  TableRow data() {
    // ignore: prefer_const_literals_to_create_immutables
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("SNO", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("NAME", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("TOTAL MARKS", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("OBTAINED MARKS", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("PERCENTAGE(%)", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Text("GRADE", style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      
    ]);
  }
  TableRow data1(
    String NO,
    String Name,
    String tm,
    String to,
    String per,
  ){
    return TableRow(children: [
      Padding(padding: const EdgeInsets.all(8.0),   
      child: Text(NO),
      ),
      Padding(padding: const EdgeInsets.all(8.0),
      child: Text(Name),
      ),
      Padding(padding: const EdgeInsets.all(8.0),
      child: Text(tm),
      ),
      Padding(padding: const EdgeInsets.all(8.0),
      child: Text(to),
      ),
      Padding(padding: const EdgeInsets.all(8.0),
      child: Text(per),
      ),
      int.parse(per.toString()) >= 90
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("A1"),
      )
        :int.parse(per.toString()) >= 80
       ? Padding(
       padding: const EdgeInsets.all(8.0),
        child: Text("A"),
       )
      :int.parse(per.toString()) >= 70
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("B"),
      )
      
      :int.parse(per.toString()) >= 60
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("C"),
      )
      :int.parse(per.toString()) >60
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Fail"),
      )
      :int.parse(per.toString()) <150
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Fail"),
      )
      
      : Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Pass"))
     ] );
      
  }
}
