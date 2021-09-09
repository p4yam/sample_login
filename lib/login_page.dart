import 'package:flutter/material.dart';
import 'package:sample_login/src/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, dimension) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/images/login_header.jpg',
                        package: 'sample_login',
                        width: dimension.maxWidth / 1.2,
                        height: dimension.maxWidth / 1.2,
                      )),
                      Text('Welcome!',style: TextStyles.BLACK_BOLD_30,),
                      SizedBox(height: 48,),
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.alternate_email_rounded),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)
                            )
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            icon: Icon(Icons.password_rounded),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)
                            )
                        ),
                      ),
                      SizedBox(height: 12,),
                      MaterialButton(
                        onPressed: (){},
                        minWidth: dimension.maxWidth,
                        color: Colors.green,
                        height: 48,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text('Login',style: TextStyles.WHITE_NORMAL_15,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
