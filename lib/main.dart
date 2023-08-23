import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/welcome/welcome.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Welcome(),
    );
  }
}

final appCount = StateProvider<int>((ref) {
  return 3;
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
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SecondPage()));
              },
            ),
            FloatingActionButton(
              onPressed: () {
                ref.read(appCount.notifier).state++;
              },
            ),
          ],
        ));
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
    );
  }
}
