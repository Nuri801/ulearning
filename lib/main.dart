import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/common/utils/app_styles.dart';
import 'package:ulearning/pages/sign_in/sign_in.dart';
import 'package:ulearning/pages/sign_up/sign_up.dart';
import 'package:ulearning/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      initialRoute: "/",
      routes: {
        "/": (context) => Welcome(),
        "signIn": (context) => SignIn(),
        "signUp": (context) => SignUp(),
      },
      // home: Welcome(),
    );
  }
}


final appCount = StateProvider<int>((ref) {
  return 5;
});

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(
        title: Text("riverpod app"),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'fsdaf',
            child: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SecondPage()));
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              ref.read(appCount.notifier).state++;
            },
          ),
        ],
      ),
    );
  }
}

class SecondPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(appCount.notifier).state++;
        },
      ),
    );
  }
}
