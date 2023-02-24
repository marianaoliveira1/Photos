import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fotos/colors/app_colors.dart';
import 'package:fotos/pages/LoginPage.dart';
import 'package:fotos/pages/RegisterPae.dart';
import 'package:fotos/styles/app_styles.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppClors.blackColor,
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'A aventura \ncomeça aqui',
                            style: relewayStyle.copyWith(
                                fontSize: 48.0,
                                color: AppClors.whiteColor,
                                fontWeight: FontWeight.w800),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.3,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.center,
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
                                  color: AppClors.whiteColor,
                                  fontWeight: FontWeight.w300),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
