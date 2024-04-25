
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media/HomeSceen.dart';
import 'package:social_media/WebProvider.dart';
import 'package:social_media/WebSceen.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => WebProvider(),)
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/' : (context) => HomeScreen(),
                'WebScreen' : (context) => WebScreen(),
              },
            );
          },
        ),
      )
  );
}