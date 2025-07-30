import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String input;
  final TextEditingController controller;
  final bool isPassword;
  const InputField({super.key, required this.input, required this.controller, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: input,
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}


class GenderSelect extends StatelessWidget {
  final String? selectedGender;
  final ValueChanged<String?> onChanged;
  const GenderSelect({super.key, required this.selectedGender, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: DropdownButtonFormField<String>(
        value: selectedGender,
        items: ["Laki-laki", "Perempuan"]
        .map((gender) => DropdownMenuItem(
          value: gender,
          child: Text(gender),
          )).toList(),
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: 'Jenis Kelamin',
          border: OutlineInputBorder(),
        ),
      )
    );
  }
}


class DatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final VoidCallback onTap;
  const DatePicker({super.key, this.selectedDate, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: "Tanggal Lahir",
            border: OutlineInputBorder()
          ),
          child: Text(
            selectedDate != null
                ? "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}"
                : "Pilih tanggal",
            style: TextStyle(
              color: selectedDate != null 
              ? Colors.black 
              : Colors.grey.shade600,
            ),
          ),
          ),
      ),
    );
  }
}