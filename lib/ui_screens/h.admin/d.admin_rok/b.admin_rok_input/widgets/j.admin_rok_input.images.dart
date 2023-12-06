part of '../_index.dart';

class AdminRokInputImages extends StatelessWidget {
  const AdminRokInputImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            _ct.pickImages();
          },
          child: Container(
            constraints: const BoxConstraints(maxWidth: 125),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text('Tambah foto'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
