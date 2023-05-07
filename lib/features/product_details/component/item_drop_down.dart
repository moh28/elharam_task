import 'package:elharam_elrabe3/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
const List<String> list = <String>['40', '41', '42', '43','44','45'];
class DropDownItem extends StatefulWidget {
  const DropDownItem({super.key});
  @override
  State<DropDownItem> createState() => _DropDownItemState();
}
class _DropDownItemState extends State<DropDownItem> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 54.w,
      decoration: BoxDecoration(color:shadowButtonColor,
      borderRadius:BorderRadius.circular(4.w) ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          underline: Container(
            decoration: ShapeDecoration(color: shadowButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.w)),
              ),
            ),
          ),
          dropdownColor: shadowButtonColor,
          iconEnabledColor: primaryColor,
              value: dropdownValue,
              icon:  ImageIcon(const AssetImage('assets/images/icon-down.png',),size: 10.sp,) ,
              elevation: 50,
              style: const TextStyle(color: primaryColor),
              onChanged: (String? value) {

                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value)
                );
              }).toList(),
        ),
      ),
    );
  }
}
