import 'package:flutter/material.dart';

import '../models/cardmodel.dart';

// ignore: must_be_immutable
class ProdutoPage extends StatelessWidget {
  CardModel model;
  ProdutoPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.nomeproduto!),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
                'Evidentemente, o entendimento das metas propostas nos obriga à análise dos paradigmas corporativos. Por outro lado, o desenvolvimento contínuo de distintas formas de atuação cumpre um papel essencial na formulação do fluxo de informações. Assim mesmo, a expansão dos mercados mundiais é uma das consequências dos relacionamentos verticais entre as hierarquias. ')
          ],
        ),
      ),
    );
  }
}
