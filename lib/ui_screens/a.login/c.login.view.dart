part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: LoginAppbar(),
      // ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: OnFormBuilder(
            listenTo: _dt.rxForm,
            builder: () => const Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
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
                    SizedBox(height: 10),
                    Divider(
                      thickness: 1.5,
                    ),
                    SizedBox(height: 10),
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
          ),
        ),
      ),
    );
  }
}
