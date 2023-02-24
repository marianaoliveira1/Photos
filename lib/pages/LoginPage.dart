import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fotos/colors/app_colors.dart';
import 'package:fotos/pages/RegisterPae.dart';
import 'package:fotos/styles/app_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: AppClors.backColor,
        body: SizedBox(
          height: height,
          width: width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: height,
                  color: AppClors.grayBackgroundColor,
                ),
              ),
              SizedBox(
                width: height * 0.1,
              ),
              Expanded(
                child: Container(
                  height: height,
                  margin: EdgeInsets.symmetric(horizontal: height * 0.10),
                  color: AppClors.backColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.145,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Olá, ',
                            style: relewayStyle.copyWith(
                                fontSize: 25.0,
                                color: AppClors.grayBackgroundColor,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: 'bem vindo de volta',
                            style: relewayStyle.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppClors.grayBackgroundColor,
                                fontSize: 25.0))
                      ])),
                      SizedBox(
                        height: height * 0.12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: relewayStyle.copyWith(
                                fontSize: 12.0,
                                color: AppClors.grayBackgroundColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: AppClors.whiteColor),
                            child: TextField(
                              style: TextStyle(
                                  color: AppClors.grayBackgroundColor),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: AppClors.grayBackgroundColor,
                                ),
                                hintText: 'Entre com o seu e-mail',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senha',
                            style: relewayStyle.copyWith(
                                fontSize: 12.0,
                                color: AppClors.grayBackgroundColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: AppClors.whiteColor),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                  color: AppClors.grayBackgroundColor),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: AppClors.grayBackgroundColor,
                                ),
                                hintText: 'Entre com o seu e-mail',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()),
                              );
                            },
                            child: Text(
                              'Ainda não tem uma conta? Cadastre-se',
                              style: relewayStyle.copyWith(
                                  fontSize: 12.0,
                                  color: AppClors.grayBackgroundColor,
                                  fontWeight: FontWeight.w300),
                            )),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70.0, vertical: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppClors.grayBackgroundColor,
                            ),
                            child: Text(
                              'Entrar',
                              style: relewayStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppClors.whiteColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
