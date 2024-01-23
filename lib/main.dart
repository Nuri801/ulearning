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
  Widget build(BuildContext context)
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

/// Test Concept: Please, Do Not Delete!
// class HomePage1 extends StatefulWidget {
//   HomePage1({super.key});
//
//   @override
//   State<HomePage1> createState() => _HomePage1State();
// }
//
// class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   Widget build(BuildContext context) {
//     _tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//       backgroundColor: AppColors.bluePalette100,
//       appBar: AppBar(
//         backgroundColor: AppColors.bluePalette100,
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: AppColors.bluePalette100,
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//               ),
//             ),
//           ),
//           Container(
//             color: AppColors.bluePalette100,
//           ),
//           Container(
//             color: AppColors.bluePalette100,
//           ) // page2
//         ],
//       ),
//       bottomNavigationBar: tabBarController(),
//     );
//   }
//
//   BottomAppBar tabBarController() {
//     return BottomAppBar(
//       color: AppColors.bluePalette100,
//       elevation: 0,
//       child: SizedBox(
//         height: 62,
//         child: TabBar(
//           labelStyle: const TextStyle(fontSize: 12, color: Colors.white),
//           controller: _tabController,
//           indicatorWeight: 1,
//           indicatorColor: AppColors.bluePalette100,
//           indicatorPadding: EdgeInsets.all(7),
//           indicator: const BoxDecoration(
//             color: Colors.black26,
//             borderRadius: BorderRadius.all(Radius.circular(6)),
//             // shape: BoxShape.circle
//           ),
//           // labelColor: AppColors.bluePalette20,
//           labelColor: Colors.pinkAccent,
//           unselectedLabelColor: Colors.white24,
//           tabs: const <Widget>[
//             Tab(
//                 icon: Icon(
//               CupertinoIcons.calendar,
//               size: 35,
//             )),
//             Tab(
//                 icon: Icon(
//               CupertinoIcons.alarm,
//               size: 35,
//             )),
//             Tab(
//                 icon: Icon(
//               CupertinoIcons.person,
//               size: 35,
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
