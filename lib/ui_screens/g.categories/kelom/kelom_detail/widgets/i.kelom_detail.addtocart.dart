part of '../_index.dart';

class KelomDetailAddtoCart extends StatelessWidget {
  const KelomDetailAddtoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _dt.rxUser.st!.isAnonymous
            ? nav.toDialog(
                AlertDialog(
                  title: const Text('Peringatan!'),
                  content: const Text(
                    'Anda tidak dapat menambahkan produk ke dalam keranjang karena anda login sebagai anonymous. Segera login dengan akun',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        nav.back();
                      },
                      child: const Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        nav.back();
                        _ct.signOut();
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              )
            : _ct.addToCart();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Tambah ke Keranjang',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}