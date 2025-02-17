import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/pages/loading/loading_page.dart';
import 'package:know_my_city/presentation/pages/phone_verification/responsive/phone_verification_laptop.dart';
import 'package:know_my_city/presentation/pages/phone_verification/responsive/phone_verification_mobile.dart';
import 'package:know_my_city/presentation/pages/phone_verification/responsive/phone_verification_tablet.dart';
import 'package:know_my_city/presentation/widgets/phone_number_field.dart';
import 'package:country_picker/country_picker.dart';

const double kMobileBreakpoint = 700;
const double kTabletBreakpoint = 1200;

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  late SignUpBloc _signUpBloc;
  String _countryCode = "+58"; // Código de Venezuela por defecto
  String _selectedGender = "Masculino"; // Valor inicial
  String phone_real = "";

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _nameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _selectCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          _countryCode = "+${country.phoneCode}";
        });
      },
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final fullPhoneNumber = "$_countryCode${_phoneController.text}";
      _signUpBloc.add(SignUpEvent.firstNameChanged(_nameController.text));
      _signUpBloc.add(SignUpEvent.lastNameChanged(_lastNameController.text));
      _signUpBloc.add(SignUpEvent.ageChanged(_ageController.text));
      _signUpBloc.add(SignUpEvent.genderChanged(_selectedGender));
      _signUpBloc.add(SignUpEvent.phoneChanged(fullPhoneNumber));
      _signUpBloc.add(SignUpEvent.sendOtp());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Enviando código a $fullPhoneNumber")),
      );
    }
  }

  Widget _buildForm(double fontScale) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Ingresa tu información",
              style: TextStyle(
                  fontSize: 20 * fontScale, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Nombre",
                labelStyle: TextStyle(fontSize: 16 * fontScale),
              ),
              validator: (value) =>
                  value == null || value.isEmpty ? "Ingrese su nombre" : null,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: "Apellido",
                labelStyle: TextStyle(fontSize: 16 * fontScale),
              ),
              validator: (value) =>
                  value == null || value.isEmpty ? "Ingrese su apellido" : null,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: "Edad",
                labelStyle: TextStyle(fontSize: 16 * fontScale),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: _selectedGender,
              items: ["Masculino", "Femenino"]
                  .map(
                    (gender) => DropdownMenuItem(
                      value: gender,
                      child: Text(gender,
                          style: TextStyle(fontSize: 16 * fontScale)),
                    ),
                  )
                  .toList(),
              onChanged: (value) =>
                  setState(() => _selectedGender = value.toString()),
            ),
            const SizedBox(height: 16),
            PhoneNumberField(
              validator: (value) => _signUpBloc.state.phoneNumber.isValid()
                  ? 'Verifique el numero'
                  : null,
              onChanged: (value) {
                phone_real = _countryCode + value;
                _signUpBloc.add(SignUpEvent.phoneChanged(phone_real));
              },
              phoneController: _phoneController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text("Enviar Código",
                  style: TextStyle(fontSize: 16 * fontScale)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveLayout(BoxConstraints constraints) {
    double fontScale;
    if (constraints.maxWidth < kMobileBreakpoint) {
      fontScale = 0.7;
      return MobilePhoneVerificationLayout(form: _buildForm(fontScale));
    } else if (constraints.maxWidth < kTabletBreakpoint) {
      fontScale = 1.2;
      return TabletPhoneVerificationLayout(form: _buildForm(fontScale));
    } else {
      fontScale = 1.4;
      return LaptopPhoneVerificationLayout(form: _buildForm(fontScale));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          // Aquí puedes manejar la lógica de errores o éxitos en el envío del OTP.
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Verificación Telefónica"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: state.isSubmitting
                ? const LoadingPage(
                    text: "Enviando código...",
                    content: "Por favor espera mientras enviamos el OTP.",
                  )
                : LayoutBuilder(
                    builder: (context, constraints) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: _buildResponsiveLayout(constraints),
                        ),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
