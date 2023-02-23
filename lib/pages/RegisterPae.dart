import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fotos/colors/app_colors.dart';
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
                  color: AppClors.mainBlueColor,
                  child: Center(
                    child: Text(
                      'A aventura \ncomeça aqui',
                      style: relewayStyle.copyWith(
                          fontSize: 48.0,
                          color: AppClors.whiteColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
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
                                color: AppClors.blueDarkColor,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: 'bem vindo de volta',
                            style: relewayStyle.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppClors.blueDarkColor,
                                fontSize: 25.0))
                      ])),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'Hey, insira seus dados \npara entrar na sua conta',
                        style: relewayStyle.copyWith(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: AppClors.textColor),
                      ),
                      SizedBox(
                        height: height * 0.064,
                      ),
                      Text(
                        'Nome',
                        style: relewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppClors.blueDarkColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppClors.whiteColor),
                        child: TextFormField(
                          style: relewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppClors.blueDarkColor,
                              fontSize: 12.0),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(top: 1.0),
                              hintText: 'Digite o seu nome',
                              hintStyle: relewayStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color:
                                      AppClors.blueDarkColor.withOpacity(0.5),
                                  fontSize: 12.0)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Email',
                        style: relewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppClors.blueDarkColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppClors.whiteColor),
                        child: TextFormField(
                          style: relewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppClors.blueDarkColor,
                              fontSize: 12.0),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(top: 1.0),
                              hintText: 'Entre com o e-mail',
                              hintStyle: relewayStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color:
                                      AppClors.blueDarkColor.withOpacity(0.5),
                                  fontSize: 12.0)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Senha',
                        style: relewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppClors.blueDarkColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppClors.whiteColor),
                        child: TextFormField(
                          style: relewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppClors.blueDarkColor,
                              fontSize: 12.0),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(top: 1.0),
                              hintText: 'Entre com a senha',
                              hintStyle: relewayStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color:
                                      AppClors.blueDarkColor.withOpacity(0.5),
                                  fontSize: 12.0)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Já tem uma conta? Entrar em contato',
                              style: relewayStyle.copyWith(
                                  fontSize: 12.0,
                                  color: AppClors.mainBlueColor,
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
                              color: AppClors.mainBlueColor,
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
              )
            ],
          ),
        ));
  }
}
