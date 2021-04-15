import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTextWidget extends StatelessWidget {
  final TextAlign? textAlign;

  const AboutTextWidget({Key? key, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Você procura uma solução para alavancar a sua empresa ou negócio? Você está no lugar certo!\n\nA see!WAVE é uma empresa especialista em desenvolvimento de soluções digitais.\n\nDesenvolvemos ferramentas que ajudam a reduzir os custos com processos, aumentar sua produtividade e faturamento. \n\nCom uma time de profissionais qualificados, nossa missão é desenvolver soluções inovadoras que melhoram a eficiência o e desempenho do seu empreendimento.",
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
