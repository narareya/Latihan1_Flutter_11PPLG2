import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  final String input;
  final TextEditingController controller;
  final bool isPassword;
  final bool isNumberOnly;
  const InputField({super.key, required this.input, required this.controller, required this.isPassword, this.isNumberOnly = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: isNumberOnly ? TextInputType.number : TextInputType.text,
        textAlign: TextAlign.start,
        inputFormatters: isNumberOnly ? [FilteringTextInputFormatter.digitsOnly] : [],
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

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const CustomButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(label),
        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
          )),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String data;
  const CustomText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

class RectButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  const RectButton({super.key, required this.onPressed, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:16, horizontal: 12),
          child: Row(
            children: [
              Icon(icon, color: Colors.deepPurple,),
              SizedBox(width: 12,),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
  
            ],
          ),
          
          ),
        ),
    );
  }
}