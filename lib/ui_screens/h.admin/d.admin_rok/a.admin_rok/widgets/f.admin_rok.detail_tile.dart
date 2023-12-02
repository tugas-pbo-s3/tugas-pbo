part of '../_index.dart';

class AdminRokDetailTile extends StatelessWidget {
  final Rok? kidsShoes;
  const AdminRokDetailTile({
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
          AdminRokDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${kidsShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminRokDetailTileEditName(kidsShoes: kidsShoes),
          AdminRokDetailTileEditDesc(kidsShoes: kidsShoes),
          AdminRokDetailTileEditMerk(kidsShoes: kidsShoes),
          AdminRokDetailTileEditPrice(kidsShoes: kidsShoes),
          AdminRokDetailTileEditQuantity(kidsShoes: kidsShoes),
          AdminRokDetailTileEditCategory(kidsShoes: kidsShoes),
          AdminRokDetailTileEditSizes(kidsShoes: kidsShoes),
          AdminRokDetailTileEditColors(kidsShoes: kidsShoes),
          CustomTile(
            title: 'Tanggal dibuat',
            subtitle: ('${kidsShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          kidsShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Tanggal diperbarui',
                  subtitle: ('${kidsShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
