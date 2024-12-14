import 'package:adopt/Home.dart';
import 'package:adopt/registro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              //logo
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset('lib/assets/image/logo.png',
                    width: 120, height: 120),

                //Titulo
                const SizedBox(height: 20),
                const Text(
                  'Iniciar sección',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

                //Subtitulo
                const SizedBox(height: 10),
                const Text(
                  'Innovación que impulsa tu éxito',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),

                //campo de usuario
                const SizedBox(height: 40),
                TextFormField(
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width > 600
                          ? 18.0
                          : 16.0), // Ajusta el tamaño de la fuente para pantallas grandes
                  controller: usernameController,
                  decoration: InputDecoration(
                    contentPadding: MediaQuery.of(context).size.width > 600
                        ? const EdgeInsets.symmetric(
                            horizontal:
                                20.0) // Más espacio en pantallas grandes
                        : const EdgeInsets.symmetric(horizontal: 10.0),
                    prefixIcon: const Icon(Icons.person),
                    labelText: '@username',
                    hintText: "Ingresa tu nombre de usuario",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "El nombre de usuario es obligatorio";
                    }
                    if (value.length < 4) {
                      return "Debe usuario debe tener al menos 4 caracteres";
                    } else {
                      return null;
                    }
                  },
                ),

                //campo de texto para la contraseña
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'Contraseña',
                    hintText: "Ingresa tu contraseña",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "La contraseña es obligatoria";
                    }
                    if (value.length < 6) {
                      return "Debe tener al menos 6 caracteres";
                    } else {
                      return null;
                    }
                  },
                ),

                //enlace al chatBot del login
                const SizedBox(height: 10),
                Align(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '¿Necesitas ayuda?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),

                //boton iniciar seccion
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Iniciar seccion',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                //Fragmento de codigo para iniciar seccion
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Iniciar seccion con Google',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Image.asset(
                      'lib/assets/image/logo_google.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),

                //Fragmento de codigo para registrarse
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("¿No tienes una cuenta?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registro()));
                      },
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
