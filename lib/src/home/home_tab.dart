import 'package:flutter/material.dart'; 

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APP BAR
      appBar: AppBar(
        title: Text.rich(TextSpan(
          style: TextStyle(
            fontSize: 30
          ),
          children: [
            TextSpan(
              text: 'Green'
            ), 
            TextSpan(
              text: 'grocer'
            )
          ]
        )),
      ),
      //CAMPO DE PESQUISA
      
      //CATEGORIA

      //GRID
    );
  }
}