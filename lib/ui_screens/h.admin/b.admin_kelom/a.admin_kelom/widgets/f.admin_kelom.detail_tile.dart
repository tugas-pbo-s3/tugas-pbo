part of '../_index.dart';

class AdminKelomDetailTile extends StatelessWidget {
  final Kelom? womenShoes;
  const AdminKelomDetailTile({
    super.key,
    required this.womenShoes,
    required this.image,
  });

  final Map<String, String>? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBoxH(55),
          AdminKelomDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${womenShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminKelomDetailTileEditName(womenShoes: womenShoes),
          AdminKelomDetailTileEditDesc(womenShoes: womenShoes),
          AdminKelomDetailTileEditMerk(womenShoes: womenShoes),
          AdminKelomDetailTileEditPrice(womenShoes: womenShoes),
          AdminKelomDetailTileEditQuantity(womenShoes: womenShoes),
          AdminKelomDetailTileEditCategory(womenShoes: womenShoes),
          AdminKelomDetailTileEditSizes(womenShoes: womenShoes),
          AdminKelomDetailTileEditColors(womenShoes: womenShoes),
          CustomTile(
            title: 'Tanggal dibuat',
            subtitle: ('${womenShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          womenShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Tanggal diperbarui',
                  subtitle: ('${womenShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
