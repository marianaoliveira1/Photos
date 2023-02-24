import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fotos/colors/app_colors.dart';
import 'package:fotos/pages/HomePage.dart';
import 'package:fotos/pages/LoginPage.dart';
import 'package:fotos/styles/app_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                            text: 'crie a sua conta',
                            style: relewayStyle.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppClors.grayBackgroundColor,
                                fontSize: 25.0))
                      ])),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'Hey, insira seus dados \npara criar a sua conta',
                        style: relewayStyle.copyWith(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: AppClors.textColor),
                      ),
                      SizedBox(
                        height: height * 0.12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nome',
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
                                  Icons.person,
                                  color: AppClors.grayBackgroundColor,
                                ),
                                hintText: 'Digite o seu email',
                              ),
                            ),
                          )
                        ],
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
                                hintText: 'Digite o seu e-mail',
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
                                hintText: 'Digite a senha',
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
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              'Já tem uma conta? Entrar em contato',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70.0, vertical: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppClors.grayBackgroundColor,
                            ),
                            child: Text(
                              'Cadastrar',
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
              ),
              SizedBox(
                width: height * 0.1,
              ),
              Expanded(
                child: Container(
                  height: height,
                  color: AppClors.grayBackgroundColor,
                ),
              ),
            ],
          ),
        ));
  }
}
