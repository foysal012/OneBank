import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onebankltd/firebase_options.dart';
import 'package:onebankltd/notification/notification_api.dart';
import 'package:onebankltd/notification/notification_page.dart';
import 'package:onebankltd/screen/authentication/signup_page_screen.dart';
import 'package:onebankltd/screen/bottom%20nav%20ber/bottom_navigationbar_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/beneficiary_main_List_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

void main() async{

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
   Hive.registerAdapter(UserModelOwnBankAdapter());
  var box = await Hive.openBox("ownbank");

  Hive.registerAdapter(UserModelOtherBankAdapter());
  var box1 = await Hive.openBox("otherbank");

  Hive.registerAdapter(UserModelMFSAdapter());
  var box2 = await Hive.openBox("mfs");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  NotificationApi().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      routes: {
        "/notification_screen": (context) => NotificationPage(),
      },
      debugShowCheckedModeBanner: false,
      home: SignUpPageScreen(),
      //home: BottomNavigationbarPageScreen(),
       //home: BeneficiaryMainListPage(),
    );
  }
}
