part of '_index.dart';

// class CustomTile extends ReactiveStatelessWidget {
//   final String title;
//   final String subtitle;
//   final IconData? icon;
//   final InjectedForm? formController;
//   final TextEditingController? textFieldController;
//   final FocusNode? focusNode;
//   final String? errorText;
//   final bool? isEdit;
//   final Function()? onSubmit;
//   const CustomTile({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//     this.isEdit = true,
//     this.formController,
//     this.textFieldController,
//     this.focusNode,
//     this.errorText,
//     this.onSubmit,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(title),
//       subtitle: Text(subtitle),
//       trailing: isEdit == true
//           ? IconButton(
//               onPressed: () {
//                 nav.toDialog(
//                   AlertDialog(
//                     title: const Text('Input New Shoes\'s Category'),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           nav.back();
//                         },
//                         child: const Text('Cancel'),
//                       ),
//                       OnFormBuilder(
//                         listenTo: Data.adminCategoryList.st.rxFormEdit.st,
//                         builder: () => OnFormSubmissionBuilder(
//                           listenTo: Data.adminCategoryList.st.rxFormEdit.st,
//                           onSubmitting: () => const CircularProgressIndicator(),
//                           child: TextButton(
//                             onPressed: Data.adminCategoryList.st.rxFormEdit.st.isDirty &&
//                                     Data.adminCategoryList.st.rxFormEdit.st.isValid
//                                 ? () => Ctrl.adminCategoryList.submitInput()
//                                 : null,
//                             child: const Text('Submit'),
//                           ),
//                         ),
//                       ),
//                     ],
//                     content: OnFormBuilder(
//                       listenTo: Data.adminCategoryList.st.rxFormEdit.st,
//                       builder: () => TextField(
//                         controller: Data.adminCategoryList.st.rxNameEdit.st.controller,
//                         focusNode: Data.adminCategoryList.st.rxNameEdit.st.focusNode,
//                         keyboardType: TextInputType.name,
//                         textInputAction: TextInputAction.next,
//                         onEditingComplete: () => Data.adminCategoryList.st.rxNameEdit.st.focusNode.unfocus(),
//                         decoration: InputDecoration(
//                           hintText: 'Name of category',
//                           labelText: 'Category\'s name',
//                           errorText: Data.adminCategoryList.st.rxNameEdit.st.error,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               color: Theme.of(context).colorScheme.primary,
//               icon: const Icon(Icons.edit),
//             )
//           : null,
//     );
//   }
// }
class CustomTile extends ReactiveStatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final bool? isEdit;
  final Function()? onEditFunction;

  const CustomTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.isEdit = true,
      this.onEditFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: isEdit == true
          ? IconButton(
              onPressed: onEditFunction,
              color: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.edit),
            )
          : null,
    );
  }
}
