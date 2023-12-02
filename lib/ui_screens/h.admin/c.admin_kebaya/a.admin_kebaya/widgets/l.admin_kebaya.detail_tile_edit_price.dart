part of '../_index.dart';

class AdminMenShoesListTileEditPrice extends StatelessWidget {
  const AdminMenShoesListTileEditPrice({
    super.key,
    required this.menShoes,
  });

  final Kebaya? menShoes;

  @override
  Widget build(BuildContext context) {
    return AdminMenShoesListTileEdit(
      menShoes: menShoes,
      title: 'Price',
      subtitle: '${menShoes?.price}',
      icon: Icons.price_change,
      editField: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => TextField(
          controller: _dt.rxPrice.st.controller,
          focusNode: _dt.rxPrice.st.focusNode,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          onEditingComplete: () => _dt.rxQuantity.st.focusNode.requestFocus(),
          decoration: InputDecoration(
            hintText: 'e.g. 100000',
            labelText: 'Product\'s Price',
            errorText: _dt.rxPrice.st.error,
          ),
        ),
      ),
    );
  }
}
