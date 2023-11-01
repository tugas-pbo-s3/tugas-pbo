part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RegisterAppbar(),
      ),
      floatingActionButton: RegisterFab(),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterEmail(),
              SizedBox(height: 10),
              RegisterPassword(),
              SizedBox(height: 10),
              RegisterRetype(),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: RegisterSubmit(),
              ),
              RegisterToLogin()
            ],
          ),
        ),
      ),
    );
  }
}
