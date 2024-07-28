import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/constants/country_code_list.dart';
import 'package:triply/core/theme/styles/shared/input_field.dart';
import 'package:triply/core/theme/styles/shared/reference_button.dart';
import 'package:triply/features/auth/auth_features/register/presentation/bloc/mail_register_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/grey_container.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key, required this.mailRegisterBloc});

  final MailRegisterBloc mailRegisterBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mailRegisterBloc,
      child: const _DetailsForm(),
    );
  }
}

class _DetailsForm extends StatefulWidget {
  const _DetailsForm();

  @override
  __DetailsFormState createState() => __DetailsFormState();
}

class __DetailsFormState extends State<_DetailsForm> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const GreyContainer(
              buttonAvailable: false,
            ),
            SizedBox(
              width: width * .8,
              child: BlocBuilder<MailRegisterBloc, MailRegisterState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      InputFieldWidget(
                        width: width,
                        isObscured: false,
                        onChanged: (value) => context
                            .read<MailRegisterBloc>()
                            .add(MailRegisterEvent.nicknameChanged(
                                nickname: value)),
                        title: "Podaj nazwę użytkownika",
                        placeholder:
                            state.nickname.isEmpty ? "" : state.nickname,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Text("Wybierz kod krajowy"),
                                ReferenceButton(
                                  width: width * .35,
                                  method: () {
                                    showCountryPicker(
                                      context: context,
                                      showPhoneCode: true,
                                      showSearch: true,
                                      countryFilter:
                                          CountryCodeList.countryCodeList,
                                      onSelect: (Country country) {
                                        context.read<MailRegisterBloc>().add(
                                              MailRegisterEvent
                                                  .phoneNumberCodeChanged(
                                                phoneNumberCode:
                                                    country.phoneCode,
                                              ),
                                            );
                                      },
                                    );
                                  },
                                  text: state.phoneCode.isEmpty
                                      ? "Kod"
                                      : "+${state.phoneCode}",
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: InputFieldWidget(
                              width: width,
                              isObscured: false,
                              onChanged: (value) => context
                                  .read<MailRegisterBloc>()
                                  .add(MailRegisterEvent.phoneNumberChanged(
                                      phoneNumber: value)),
                              title: "Podaj numer",
                              placeholder: state.phoneNumber.isEmpty
                                  ? ""
                                  : state.phoneNumber,
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
              width: width * .8,
              child: BlocBuilder<MailRegisterBloc, MailRegisterState>(
                  builder: (context, state) {
                return DropdownButton<int>(
                  value: state.gender,
                  hint: const Text("Select Gender"),
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  autofocus: false,
                  items:
                      <int>[0, 1, 2].map<DropdownMenuItem<int>>((int? value) {
                    String label = value == 0
                        ? "Wybierz płeć"
                        : value == 1
                            ? "Mężczyzna"
                            : "Kobieta";

                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(label),
                    );
                  }).toList(),
                  onChanged: (int? value) {
                    context.read<MailRegisterBloc>().add(
                          MailRegisterEvent.genderChanged(gender: value ?? 0),
                        );
                  },
                );
              }),
            ),
            ElevatedButton(
                onPressed: () => context
                    .read<MailRegisterBloc>()
                    .add(const MailRegisterEvent.submit()),
                child: const Text("test"))
          ],
        ),
      ),
    );
  }
}
