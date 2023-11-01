part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LoginAppbar(),
      ),
      floatingActionButton: LoginFab(),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginEmail(),
              SizedBox(height: 10),
              LoginPassword(),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: LoginSubmit(),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: LoginGoogle(),
              ),
              SizedBox(height: 2),
              SizedBox(
                width: 200,
                child: LoginAnon(),
              ),
              SizedBox(height: 20),
              LoginToRegister()
            ],
          ),
        ),
      ),
    );
  }
}
