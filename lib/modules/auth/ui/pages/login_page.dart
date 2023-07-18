import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';
import 'package:nav_app_ecomputer/modules/auth/ui/widgets/basic_text_form.dart';
import 'package:nav_app_ecomputer/modules/start/cubits/cubit/start_cubit.dart';
import 'package:nav_app_ecomputer/utils/validators.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    FormValidator formValidator = FormValidator();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      // floatingActionButton: Row(
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         context.pop();
      //       },
      //       heroTag: 'F1',
      //       child: Icon(
      //         Icons.arrow_back,
      //       ),
      //     ),
      //     FloatingActionButton(
      //       heroTag: 'F2',
      //       onPressed: () {
      //         // context.goNamed(AppRoutes.camisetas.name);
      //         locator<StartCubit>().checkIfUserIsLogged(isUserLogged: true);
      //       },
      //       child: Icon(
      //         Icons.arrow_forward,
      //       ),
      //     ),
      //   ],
      // ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              BasicTextForm(
                title: 'Email',
                hintText: 'Escribe tu Email',
                textEditingController: emailController,
                obscureText: false,
                validator: formValidator.isValidEmail,
              ),
              const SizedBox(
                height: 50.0,
              ),
              BasicTextForm(
                title: "Contraseña",
                hintText: 'Escribe tu Contraseña',
                textEditingController: passController,
                obscureText: true,
                validator: formValidator.isValidPass,
              ),
              const SizedBox(
                height: 50.0,
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    print("Este Formulario es Verdadero");
                    locator<StartCubit>()
                        .checkIfUserIsLogged(isUserLogged: true);
                  } else {
                    print("Vuelve a Intentarlo");
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextButton(
                onPressed: () {
                  context.goNamed(AppRoutes.register.name);
                  print("Navegandooo");
                },
                child: Text(
                  "¿Aún no tienes cuenta? Registrate Aquí",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
