part of '_index.dart';

class AllView extends StatelessWidget {
  const AllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...List.generate(
            13,
            (index) => Card(
              child: ListTile(
                title: Text('product $index'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
