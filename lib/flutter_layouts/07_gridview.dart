/**
 * * Flutter Tutorials: Gridview Widgets
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */
import 'package:flutter/material.dart';

// ? 1. GridView()
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          padding: const EdgeInsets.all(16.0),
          children: const <Widget>[
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}

// ? 2. GridView.count()
class GridCounts extends StatelessWidget {
  const GridCounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 4,
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            const FlutterLogo(),
            const FlutterLogo(),
            const FlutterLogo(),
            Container(color: Colors.amber, child: const FlutterLogo()),
            Container(color: Colors.black, child: const FlutterLogo()),
            Container(color: Colors.lightBlue, child: const FlutterLogo()),
          ],
        ),
      ),
    );
  }
}

// ? 3. GridView.count() with List
class GridCountList extends StatefulWidget {
  const GridCountList({Key? key}) : super(key: key);

  @override
  State<GridCountList> createState() => _GridCountListState();
}

class _GridCountListState extends State<GridCountList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          scrollDirection: Axis.horizontal, // <- kesamping
          padding: const EdgeInsets.all(20.0),
          children: List.generate(10, (index) {
            return Container(
              margin: const EdgeInsets.all(2.0),
              child: const Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  'A',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                )),
              ),
            );
          }),
        ),
      ),
    );
  }
}

// ? 4. GridView.builder()
class GridBuilder extends StatefulWidget {
  const GridBuilder({Key? key}) : super(key: key);

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}

class _GridBuilderState extends State<GridBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: ((context, index) => const FlutterLogo()),
          itemCount: 4,
        ),
      ),
    );
  }
}
