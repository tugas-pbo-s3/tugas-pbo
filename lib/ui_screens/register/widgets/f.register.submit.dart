part of '../_index.dart';

class RegisterSubmit extends StatelessWidget {
  const RegisterSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        nav.to(Routes.productList);
      },
      child: const Text(
        'Submit',
      ),
    );
  }
}
