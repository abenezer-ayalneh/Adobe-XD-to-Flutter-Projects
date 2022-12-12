import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast_app_new/consts/consts.dart';
import 'package:podcast_app_new/controls/textfield_control.dart';

class EmailTextfield extends StatelessWidget {
  final FocusNode? nextFocusNode;
  final FocusNode currentFocusNode;
  EmailTextfield({this.nextFocusNode, required this.currentFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xff7477A0),
      style: TextStyle(
        fontSize: ScreenUtil().setSp(15),
        color: Color(0xffffffff),
        fontFamily: "Circular_Std",
      ),
      focusNode: currentFocusNode,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(15),
        ),
        prefixIcon: Container(
          margin: EdgeInsets.only(
            right: ScreenUtil().setWidth(14),
            left: ScreenUtil().setWidth(20),
          ),
          child: SvgPicture.string(
            envelop_icon,
            width: ScreenUtil().setWidth(15),
            color: Color(0xff7477A0),
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: ScreenUtil().setHeight(50),
          maxWidth: ScreenUtil().setHeight(50),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none,
        ),
        enabled: true,
        filled: true,
        fillColor: Color(0xff1D192C),
        hintText: "Email Address",
        hintStyle: TextStyle(
          color: Color(0xff7477A0),
          fontSize: ScreenUtil().setSp(13),
          fontWeight: FontWeight.w400,
        ),
      ),
      onFieldSubmitted: (value) => textFieldFocusChange(
        context: context,
        currentFocusNode: currentFocusNode,
        nextFocusNode: nextFocusNode,
      ),
    );
  }
}
