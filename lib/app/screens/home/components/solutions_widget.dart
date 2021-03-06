import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:personal_portfolio/app/screens/home/home_controller.dart';

import '../../../utils/colors.dart';

class SolutionsWidget extends StatelessWidget {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'Desenvolvemos a solução ideal para a sua empresa!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              card('/img/web_vectary.png', 'WEB SITES', 0),
              card('/img/mobile_vectary.png', 'APLICATIVOS MÓVEIS', 1),
              card('/img/store_vectary.png', 'LOJAS VIRTUAIS', 2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff25262A),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(
                  color: Color(0xff05A2EF),
                ),
              ),
              child: Observer(builder: (_) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ['WEB SITES', 'APLICATIVOS MÓVEIS', 'LOJAS VIRTUAIS']
                            .elementAt(controller.solutionSelected),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        [
                          'Descrição WEB SITES',
                          'Descrição APLICATIVOS MÓVEIS',
                          'Descrição LOJAS VIRTUAIS'
                        ].elementAt(controller.solutionSelected),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget card(String img, String title, int index) => GestureDetector(
        onTap: () {
          controller.setSolutionSelected(index);
        },
        child: Observer(builder: (_) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                    color: Color(0xff25262A),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: controller.solutionSelected == index
                        ? Border.all(
                            color: Color(0xff05A2EF),
                          )
                        : null,
                  ),
                ),
                Container(
                  width: 190,
                  height: 220,
                  child: Column(
                    children: [
                      Image.asset(
                        img,
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: controller.solutionSelected == index
                                ? Color(0xff05A2EF)
                                : Color(0xffAFAFAF),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      );
}
