import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/widgets/custom_text_field.dart';
import 'package:greengrocer/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});
  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do usuario',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(
          16,
          32,
          16,
          16,
        ),
        children: [
          //email
          CustomTextField(
            intialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
            readOnly: true,
          ),
          //nome
          CustomTextField(
            intialValue: appData.user.name,
            icon: Icons.person,
            label: 'nome',
            readOnly: true,
          ),
          //celular
          CustomTextField(
            intialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
            readOnly: true,
          ),
          //password
          CustomTextField(
            intialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            readOnly: true,
          ),
          //botao para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                updatedPassword();
              },
              child: const Text(
                'Atualizar Senha',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatedPassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Atualização de senha',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock,
                      label: 'Senha Atual',
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outline,
                      label: 'Nova Senha',
                    ),
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outline,
                      label: 'Confirmar nova senha',
                    ),

                    //Botao de confimacao
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Atualizar'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
