import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media/WebProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebProvider? True;
  WebProvider? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<WebProvider>(context, listen: false);
    True = Provider.of<WebProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade900,
          title: Text(
            "Socai Media",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView.builder(
                itemCount: False!.name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'WebScreen');
                False!.loadurl(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2,color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text(
                                "${False!.name[index]}",
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),

                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "${False!.name[index]}",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}