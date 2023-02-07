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
      appBar: AppBar(
        title: Text("NAMELUIS"),
      ),
      body: Column(
        children: [
          TextField(
            controller: datacontroller,
          ),
          ElevatedButton(
              onPressed: () async {
                await addData(datacontroller.text);
                Navigator.pop(context);
              },
              child: Text("Save Information"))
        ],
      ),
    );
    // body: Center(
    //   child: FutureBuilder(
    //       future: getPeople(),
    //       builder: ((context, snapshot) {
    //         if (snapshot.hasData) {
    //           return ListView.builder(
    //               itemCount: snapshot.data?.length,
    //               itemBuilder: (context, index) {
    //                 return Text(snapshot.data?[index]['name']);
    //               });
    //         } else {
    //           return const CircularProgressIndicator();
    //         }
    //       })),
    // ));
  }
}
