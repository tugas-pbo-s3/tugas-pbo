part of '_index.dart';

class AllView extends StatelessWidget {
  const AllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          ...List.generate(
            13,
            (index) => Card(
              child: InkWell(
                onTap: () {
                  nav.to(Routes.productDetail);
                },
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Center(
                      child: Column(
                    children: [
                      Image.asset('assets/images/pegaShoes500.png', height: 150),
                      Text('product $index'),
                      Text('Rp $index'),
                    ],
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}