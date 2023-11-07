part of '../_index.dart';

class AdminCategoryDetailAppbar extends StatelessWidget {
  const AdminCategoryDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () {
            nav.toCupertinoDialog(
              CupertinoAlertDialog(
                title: const Text('Confirmation'),
                content: const Text('Are you sure to delete these items?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      nav.back();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      nav.back();
                      _ct.delete();
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
            );
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
