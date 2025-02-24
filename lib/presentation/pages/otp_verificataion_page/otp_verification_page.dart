import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/pages/loading/loading_page.dart';
import 'package:know_my_city/presentation/pages/otp_verificataion_page/responsive/laptop_otp_verification_page.dart';
import 'package:know_my_city/presentation/pages/otp_verificataion_page/responsive/mobile_otp_verification_layout.dart';
import 'package:know_my_city/presentation/pages/otp_verificataion_page/responsive/tablet_otp_verification_layout.dart';

const double kMobileBreakpoint = 700;
const double kTabletBreakpoint = 1200;

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();
  late SignUpBloc _signUpBloc; // Se reutiliza el bloc ya implementado

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _submitOtp() {
    if (_formKey.currentState!.validate()) {
      final otp = _otpController.text;
      _signUpBloc.add(SignUpEvent.verifyOtp());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Verificando OTP: $otp")),
      );
    }
  }

  /// Construye el formulario OTP aplicando un factor [fontScale] para ajustar la fuente.
  Widget _buildOtpForm(double fontScale) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ingrese el código OTP",
            style: TextStyle(
              fontSize: 20 * fontScale,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _otpController,
            keyboardType: TextInputType.number,
            maxLength: 6,
            decoration: InputDecoration(
              labelText: "Código de 6 dígitos",
              labelStyle: TextStyle(fontSize: 16 * fontScale),
              border: const OutlineInputBorder(),
              counterText: '', // Oculta el contador de caracteres
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Ingrese el código OTP";
              }
              if (value.length != 6) {
                return "El código debe tener 6 dígitos";
              }
              return null;
            },
            onChanged: (value) {
              _signUpBloc.add(SignUpEvent.otpChanged(value));
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitOtp,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: Text(
              "Validar OTP",
              style: TextStyle(
                fontSize: 16 * fontScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Determina el layout responsivo y el factor de escala de fuente.
  Widget _buildResponsiveLayout(BoxConstraints constraints) {
    double fontScale;
    if (constraints.maxWidth < kMobileBreakpoint) {
      fontScale = 1.0;
      return MobileOtpVerificationLayout(form: _buildOtpForm(fontScale));
    } else if (constraints.maxWidth < kTabletBreakpoint) {
      fontScale = 1.2;
      return TabletOtpVerificationLayout(form: _buildOtpForm(fontScale));
    } else {
      fontScale = 1.4;
      return LaptopOtpVerificationLayout(form: _buildOtpForm(fontScale));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () {},
          (result) => result.fold(
            (failure) {
              // Muestra error si la verificación falla
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(failure.message)));
            },
            (success) {
              // Si es exitoso, navega a la siguiente página (por ejemplo, perfil telefónico)
              // Show snack-bar
              context.go('/');
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Verificación OTP"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: state.isSubmitting
              ? const LoadingPage(
                  text: "Verificando OTP...",
                  content: "Por favor, espere.",
                )
              : LayoutBuilder(
                  builder: (context, constraints) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: _buildResponsiveLayout(constraints),
                    );
                  },
                ),
        );
      },
    );
  }
}
