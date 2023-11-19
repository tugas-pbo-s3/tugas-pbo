part of '../_index.dart';

class AdminWomenShoesListDetailTile extends StatelessWidget {
  final WomenShoes? womenShoes;
  const AdminWomenShoesListDetailTile({
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
          AdminWomenShoesListDetailTileEditImages(image: image),
          const SizedBoxH(10),
          CustomTile(
            title: 'Id',
            subtitle: '${womenShoes?.productId}',
            icon: Icons.key,
            isEdit: false,
          ),
          AdminWomenShoesListTileEditName(womenShoes: womenShoes),
          AdminWomenShoesListTileEditDesc(womenShoes: womenShoes),
          AdminWomenShoesListTileEditMerk(womenShoes: womenShoes),
          AdminWomenShoesListTileEditPrice(womenShoes: womenShoes),
          AdminWomenShoesListTileEditQuantity(womenShoes: womenShoes),
          AdminWomenShoesListTileEditCategory(womenShoes: womenShoes),
          AdminWomenShoesListDetailTileEditSizes(womenShoes: womenShoes),
          AdminWomenShoesListDetailTileEditColors(womenShoes: womenShoes),
          CustomTile(
            title: 'Created At',
            subtitle: ('${womenShoes?.createdAt}'),
            icon: Icons.date_range,
            isEdit: false,
          ),
          womenShoes?.updatedAt == null
              ? const SizedBox.shrink()
              : CustomTile(
                  title: 'Updated At',
                  subtitle: ('${womenShoes?.updatedAt}'),
                  icon: Icons.date_range,
                  isEdit: false,
                ),
        ],
      ),
    );
  }
}
