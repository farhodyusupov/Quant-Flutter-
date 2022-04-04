import 'package:flutter/material.dart';

import '../../masked_input_formatter.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final numberController = TextEditingController();

  final maskedNumber = MaskTextInputFormatter(mask: "## ### ## ##", filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [
              Color(0xFFFFB2BF),
              Color(0xFFC5B2FF),
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Добро пожаловать!",
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Введите свой номер телефона, чтобы продолжить",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 36),
                Container(
                  padding: const EdgeInsets.only(top: 4, bottom: 10),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(20)),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: numberController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [maskedNumber],
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Введите номер телефона";
                        }
                        if (val.length < 12) {
                          return "Не корректный номер телефона";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        label: Text(
                          "Номер телефона",
                          style: TextStyle(
                            color: Color.fromRGBO(32, 32, 32, 0.5),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 24),
                        border: InputBorder.none,
                        prefix: Text("+998 "),
                        prefixStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 54),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFC5B2FF),
                            Color(0xFF7BA3F2),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Продолжить",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
