part of '../_index.dart';

class AdminHomeInfos extends StatelessWidget {
  const AdminHomeInfos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminHomeAppbar(),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width < 600 ? double.infinity : null,
          constraints: MediaQuery.of(context).size.width < 600 ? null : const BoxConstraints(maxWidth: 1000),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey),
          ),
          child: const SingleChildScrollView(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                AdminHomeInfoTotal(),
                Divider(),
                AdminHomeInfoTotalWomenShoes(),
                AdminHomeInfoTotalMenShoes(),
                AdminHomeInfoTotalKidsShoes(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
