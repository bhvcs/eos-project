import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';
import 'MainScreen.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Authentication(),
    );
  }
}
class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(//비동기적인 작동을 원할 떄 사용
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){//snapshot에 데이터가 있는지 없는지로 로그인 화면을 보여주는지말지 결정
          if(!snapshot.hasData){//사용자 인증이 안되었을 떄 보여주는 화면
            return SignInScreen(
              headerBuilder: (context, constraints, double){
                return Padding(
                    padding: EdgeInsets.all(20),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image(
                        image: AssetImage('image/chef-401_256.gif'),
                ),
                ),
                );
              },
              providerConfigs: [
                EmailProviderConfiguration()
              ],
            );
          }
          return MainScreen();
        },
    );
  }
}


