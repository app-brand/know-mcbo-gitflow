import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/domain/value_objects/phone_number.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/widgets/phone_number_field.dart';
import 'package:know_my_city/presentation/pages/loading/loading_page.dart';
import 'package:country_picker/country_picker.dart';

const double kMobileBreakpoint = 700;

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

  Widget _buildForm() {
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
            const Text(
              "Ingresa tu información",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Nombre"),
              validator: (value) =>
                  value == null || value.isEmpty ? "Ingrese su nombre" : null,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(labelText: "Apellido"),
              validator: (value) =>
                  value == null || value.isEmpty ? "Ingrese su apellido" : null,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: "Edad"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: _selectedGender,
              items: ["Masculino", "Femenino"]
                  .map(
                    (gender) =>
                        DropdownMenuItem(value: gender, child: Text(gender)),
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
                phoneController: _phoneController),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text("Enviar Código"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveLayout(
      BuildContext context, BoxConstraints constraints) {
    final bool isMobile = constraints.maxWidth < kMobileBreakpoint;

    // Imagen de referencia
    final Widget imageWidget = ClipRRect(
      borderRadius: isMobile
          ? const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )
          : const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
      child: Image.asset(
        'assets/images/banner/Teatro_Baralt.jpg',
        fit: BoxFit.cover,
        height: isMobile ? 200 : double.infinity,
        width: isMobile ? double.infinity : null,
      ),
    );

    if (isMobile) {
      // En móviles se muestra en columna, se pueden usar Expanded o SizedBox si se quiere forzar alturas iguales.
      return SingleChildScrollView(
        child: Column(
          children: [
            imageWidget,
            _buildForm(),
          ],
        ),
      );
    } else {
      // En escritorio, se utiliza un Row con Expanded para que ambos ocupen el mismo ancho.
      return Row(
        children: [
          Expanded(child: imageWidget),
          const SizedBox(width: 20),
          Expanded(child: _buildForm()),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          // Puedes implementar aquí la lógica de error o éxito en el envío del OTP,
          // por ejemplo, mostrando un diálogo o navegando a otra pantalla.
          // if (state.someStatus == SomeStatus.error) { ... }
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
                          child: _buildResponsiveLayout(context, constraints),
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
