part of '../_index.dart';

class AdminKidsShoesListTileEdit extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget editField;
  final bool isTextField;

  const AdminKidsShoesListTileEdit({
    super.key,
    required this.kidsShoes,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.isTextField = true,
    required this.editField,
  });

  final KidsShoes? kidsShoes;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      title: title,
      subtitle: subtitle,
      icon: icon,
      onEditFunction: () {
        _ct.refreshTextField();
        nav.toDialog(
          AlertDialog(
            title: Text('Edit Kids\'s Shoes $title'),
            actions: [
              TextButton(
                onPressed: () {
                  nav.back();
                },
                child: const Text('Cancel'),
              ),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: TextButton(
                    onPressed: isTextField == true
                        ? _dt.rxForm.isDirty && _dt.rxForm.isValid
                            ? () => _ct.submit()
                            : null
                        : () => _ct.submit(),
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
            content: editField,
          ),
        );
      },
    );
  }
}
