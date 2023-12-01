part of '../_index.dart';

class AdminKidsShoesListDetailTile extends StatelessWidget {
  final Rok? kidsShoes;
  const AdminKidsShoesListDetailTile({
    super.key,
    required this.kidsShoes,
    required this.image,
  });

  final Map<String, String>? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBoxH(55),
          AdminKidsShoesListDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${kidsShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminKidsShoesListTileEditName(kidsShoes: kidsShoes),
          AdminKidsShoesListTileEditDesc(kidsShoes: kidsShoes),
          AdminKidsShoesListTileEditMerk(kidsShoes: kidsShoes),
          AdminKidsShoesListTileEditPrice(kidsShoes: kidsShoes),
          AdminKidsShoesListTileEditQuantity(kidsShoes: kidsShoes),
          AdminKidsShoesListTileEditCategory(kidsShoes: kidsShoes),
          AdminKidsShoesListDetailTileEditSizes(kidsShoes: kidsShoes),
          AdminKidsShoesListDetailTileEditColors(kidsShoes: kidsShoes),
          CustomTile(
            title: 'Created At',
            subtitle: ('${kidsShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          kidsShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Updated At',
                  subtitle: ('${kidsShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
