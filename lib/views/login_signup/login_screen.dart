import 'package:login_signup/utils/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    customText(
                        txt: "Login Now",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    customText(
                        txt: "Please login to continue using our app.",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 60,
                    ),
                    customText(
                        txt: "Enter via social networks",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: InkwellButtons(
                              image: Image.asset("image/img3.png")),
                          onTap: () {},
                        ),
                        const SizedBox(width: 37),
                        InkWell(
                          child: InkwellButtons(
                              image: Image.asset("image/img4.png")),
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    customText(
                        txt: "or login with email",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(Lone: "Email", Htwo: "Email"),
                    const SizedBox(height: 20),
                    CustomTextField(Lone: "Password", Htwo: "Password"),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: _value,
                          onChanged: (newValue) {
                            setState(() {
                              _value = newValue!;
                            });
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                  fontSize: 13, color: AppColors.kBlackColor),
                            );
                          },
                        ),
                        Spacer(),
                        const TextButton(
                          onPressed: null,
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),
                    InkWell(
                      child: SignUpContainer(st: "LogIn"),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()));
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      child: RichText(
                        text: RichTextSpan(
                            one: "Don’t have an account ? ", two: "Sign Up"),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                      },
                    ),
                    //Text("data"),
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
