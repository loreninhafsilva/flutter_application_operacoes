// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class MyOperacoes extends StatefulWidget {
  const MyOperacoes({super.key});

  @override
  State<MyOperacoes> createState() => _MyOperacoesState();
}

class _MyOperacoesState extends State<MyOperacoes> {

  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  String resultado = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Operações", style: TextStyle(color: Colors.white),), backgroundColor: Color.fromRGBO(92, 107, 192, 1) ,leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,), // ícone desejado
            onPressed: () {
            },
          ),
          ),
      body: Container(
        padding: EdgeInsets.all(13.5),
        child: Column(children: [
          SizedBox(height: 40,),
          Text("Operações para aprendizado do uso do Widget TextField", style: TextStyle(fontSize: 19),),
          SizedBox(height: 30,),
          TextField(
         controller: controladorTexto,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.blue),),
          filled: true,
          fillColor: Color.fromARGB(92, 107, 192, 1),
          labelText: "Digite o valor 1",
          prefixIcon: Icon(Icons.numbers),
         ),
        ),
        SizedBox(height: 15,),
        TextField(
         controller: controladorTexto2,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.blue),),
          filled: true,
          fillColor: Color.fromARGB(92, 107, 192, 1),
          labelText: "Digite o valor 2",
          prefixIcon: Icon(Icons.numbers),
         ),
        ),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(onPressed: (){
          double valor1 = double.parse(controladorTexto.text);
          double valor2 = double.parse(controladorTexto2.text);
          resultado = (valor1 + valor2).toString();
          setState(() {
            
          });
        },
        child: Icon(Icons.add)),
        SizedBox(width: 5,),
        ElevatedButton(onPressed: (){
          double valor1 = double.parse(controladorTexto.text);
          double valor2 = double.parse(controladorTexto2.text);
          resultado = (valor1 - valor2).toString();
          setState(() {
            
          });
        },
        child: Icon(Icons.remove)),
        SizedBox(width: 5,),
        ElevatedButton(onPressed: (){
         double valor1 = double.parse(controladorTexto.text);
          double valor2 = double.parse(controladorTexto2.text);
          resultado = (valor1 * valor2).toString();
          setState(() {
            
          });
        },
        child: Icon(Icons.close)),
        SizedBox(width: 5,),
        ElevatedButton(onPressed: (){
         double valor1 = double.parse(controladorTexto.text);
         double valor2 = double.parse(controladorTexto2.text);
         if (valor2 == 0){
          resultado = "ERRO - Não existe divisão por 0";
         } else{
          resultado = (valor1 / valor2).toString();
        }
          setState(() {
            
          });
        },
        child: Text("/")),
        SizedBox(width: 5,),
        ElevatedButton(onPressed: (){
         controladorTexto.text = "";
         controladorTexto2.text = "";
         resultado = " ";
          setState(() {
            
          });
        },
        child: Text("CE")),
        ],),
        SizedBox(height: 15,),
        Text("Resultado: " + resultado, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ]),)
    );
  }
}