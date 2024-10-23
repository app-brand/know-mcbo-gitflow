import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/profile/profile_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/widgets/phone_number_field.dart';

class PhoneDialog extends StatefulWidget {
  const PhoneDialog({Key? key}) : super(key: key);

  @override
  _PhoneDialogState createState() => _PhoneDialogState();
}

class _PhoneDialogState extends State<PhoneDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _lastname = TextEditingController();
  late ProfileBloc _profileBloc;
  String? _countryCodePhone;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _profileBloc = sl<ProfileBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: _profileBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.95,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*
                            CountryCodePicker(
                              onChanged: (countryCode) {
                                setState(() {
                                  _countryCode = countryCode.dialCode;
                                });
                              },
                              initialSelection: 'VE',
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              favorite: ['+58', 'VE'],
                            ),*/
                            Expanded(
                              child: PhoneNumberField(
                                onChanged: (phone) {
                                  _profileBloc.add(
                                    ProfileEvent.phoneChanged(phone),
                                  );
                                },
                                phoneController: _phoneController,
                                validator: (phone) {
                                  return _profileBloc.state.phone_number.value
                                      .fold((failure) {
                                    print('failed ${failure.message}');
                                    return failure.message;
                                  }, (phone) {
                                    print('success: ${phone}}');
                                    return null;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            print(_countryCodePhone);
                            if (formKey.currentState!.validate()) {
                              print(_countryCodePhone);
                              _profileBloc.add(ProfileEvent.sendOtp());
                            }
                          },
                          child: const Text('Telefono'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
