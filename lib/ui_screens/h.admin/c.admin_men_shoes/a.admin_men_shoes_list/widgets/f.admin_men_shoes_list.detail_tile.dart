part of '../_index.dart';

class AdminMenShoesListDetailTile extends StatelessWidget {
  final Kebaya? menShoes;
  const AdminMenShoesListDetailTile({
    super.key,
    required this.menShoes,
    required this.image,
  });

  final Map<String, String>? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBoxH(55),
          AdminMenShoesListDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${menShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminMenShoesListTileEditName(menShoes: menShoes),
          AdminMenShoesListTileEditDesc(menShoes: menShoes),
          AdminMenShoesListTileEditMerk(menShoes: menShoes),
          AdminMenShoesListTileEditPrice(menShoes: menShoes),
          AdminMenShoesListTileEditQuantity(menShoes: menShoes),
          AdminMenShoesListTileEditCategory(menShoes: menShoes),
          AdminMenShoesListDetailTileEditSizes(menShoes: menShoes),
          AdminMenShoesListDetailTileEditColors(menShoes: menShoes),
          CustomTile(
            title: 'Created At',
            subtitle: ('${menShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          menShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Updated At',
                  subtitle: ('${menShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
