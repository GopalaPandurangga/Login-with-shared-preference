import 'package:flutter/material.dart';
import 'package:slicing_ui2_login/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  doLogin() async {
    bool isNotValid = formKey.currentState!.validate() == false;
    if (isNotValid) {
      showInfoDialog("Please fill your email and password");
      return;
    }
    showLoading();
    try {
      await AuthService().login(
        email: email!,
        password: password!,
      );
      hideLoading();
      Get.offAll(DashboardView());
    } on Exception catch (err) {
      print(err);
    }
  }
}
