import 'package:facebook_aplication_phishing/services/firebase_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NAMELUIS"),
        ),
        body: Center(
          child: FutureBuilder(
              future: getPeople(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return Text(snapshot.data?[index]['name']);
                      });
                } else {
                  return const CircularProgressIndicator();
                }
              })),
        ));
  }
}
