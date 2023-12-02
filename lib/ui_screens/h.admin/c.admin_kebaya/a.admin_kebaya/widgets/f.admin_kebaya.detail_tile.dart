part of '../_index.dart';

class AdminKebayaDetailTile extends StatelessWidget {
  final Kebaya? menShoes;
  const AdminKebayaDetailTile({
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
          AdminKebayaDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${menShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminKebayaDetailTileEditName(menShoes: menShoes),
          AdminKebayaDetailTileEditDesc(menShoes: menShoes),
          AdminKebayaDetailTileEditMerk(menShoes: menShoes),
          AdminKebayaTileEditPrice(menShoes: menShoes),
          AdminKebayaDetailTileEditQuantity(menShoes: menShoes),
          AdminMKebayaDetailTileEditCategory(menShoes: menShoes),
          AdminKebayaDetailTileEditSizes(menShoes: menShoes),
          AdminKebayaDetailTileEditColors(menShoes: menShoes),
          CustomTile(
            title: 'Tanggal dibuat',
            subtitle: ('${menShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          menShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Tanggal diperbarui',
                  subtitle: ('${menShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
