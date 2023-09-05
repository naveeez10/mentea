import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    this.controller,
    this.focusNode,
    this.errorText,
    this.labelText,
    this.hintText,
    this.autoFocus = false,
    this.enabled = true,
    this.allowCopyPaste = true,
    this.useOutlineBorder = true,
    this.hideAllBorers = false,
    this.showCounter = true,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.boxDecoration,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 16),
    this.textCapitalization = TextCapitalization.sentences,
    this.inputAction,
    this.borderWidth = 1,
    this.borderRadius = 8,
    this.maxHeight,
    this.lineHeight,
    this.scrollController,
    this.inputType,
    this.inputStyle,
    this.hintStyle,
    this.inputFormatters,
    this.suffix,
    this.suffixConstraints,
    this.prefix,
    this.onSubmitted,
    this.onChanged,
    this.onMention,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final bool autoFocus;
  final bool enabled;
  final bool allowCopyPaste;
  final bool useOutlineBorder;
  final bool hideAllBorers;
  final bool showCounter;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double borderRadius;
  final double borderWidth;
  final double? maxHeight;
  final double? lineHeight;
  final EdgeInsets contentPadding;
  final BoxDecoration? boxDecoration;
  final TextCapitalization textCapitalization;
  final ScrollController? scrollController;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Widget? prefix;
  final BoxConstraints? suffixConstraints;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final Function(Map<String, String>)? onMention;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          Text(
            labelText!,
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
        Container(
          constraints: BoxConstraints(maxHeight: maxHeight ?? double.infinity),
          decoration: boxDecoration,
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            scrollPhysics: BouncingScrollPhysics(),
            enabled: enabled,
            autofocus: autoFocus,
            maxLength: maxLength,
            minLines: minLines,
            maxLines: maxLines,
            enableInteractiveSelection: allowCopyPaste,
            keyboardType: inputType,
            textInputAction: inputAction,
            style: inputStyle ??
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: lineHeight ?? 1),
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatters,
            buildCounter: (context, {required currentLength, maxLength, required isFocused}) =>
                Text(
              '$currentLength/$maxLength',
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            decoration: InputDecoration(
              isCollapsed: true,
              counterText: showCounter
                  ? maxLength == null
                      ? ''
                      : null
                  : '',
              errorText: errorText,
              hintText: hintText,
              suffixIcon: suffix,
              prefixIcon: prefix,
              suffixIconConstraints: suffixConstraints,
              errorMaxLines: 2,
              errorStyle: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w400),
              hintStyle: hintStyle ?? TextStyle(height: lineHeight, color: Colors.grey),
              contentPadding: contentPadding,
              disabledBorder: hideAllBorers || useOutlineBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                      borderSide: BorderSide(
                        width: borderWidth,
                        style: BorderStyle.solid,
                        color: hideAllBorers ? Colors.transparent : Colors.grey[200]!,
                      ),
                    )
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: borderWidth, style: BorderStyle.solid, color: Colors.grey[200]!),
                    ),
              enabledBorder: hideAllBorers || useOutlineBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                      borderSide: BorderSide(
                        width: borderWidth,
                        style: BorderStyle.solid,
                        color: hideAllBorers ? Colors.transparent : Colors.grey[200]!,
                      ),
                    )
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: borderWidth,
                        style: BorderStyle.solid,
                        color: Colors.grey[300]!,
                      ),
                    ),
              focusedBorder: hideAllBorers || useOutlineBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                      borderSide: BorderSide(
                        width: borderWidth,
                        style: BorderStyle.solid,
                        color: hideAllBorers ? Colors.transparent : Colors.grey[200]!,
                      ),
                    )
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: borderWidth,
                        style: BorderStyle.solid,
                        color: Colors.grey[300]!,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
