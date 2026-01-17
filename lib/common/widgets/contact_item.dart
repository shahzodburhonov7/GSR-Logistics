import 'package:warhouse_qr_code/common/colors/app_colors.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    this.imgId,
    this.name,
    this.phone,
    this.amount,
    this.onTap,
  });
  final ImageProvider? imgId;
  final String? name;
  final String? phone;
  final double? amount;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.r, top: 7.r, right: 16.r),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      imgId ?? AssetImage('assets/images/avatar.png'),
                ),

                SizedBox(width: 10.r),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '--',
                      style: GoogleFonts.roboto(
                        fontSize: 17.r,
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 5.r),
                    Text(
                      phone ?? '--',
                      style: GoogleFonts.roboto(
                        fontSize: 14.r,
                        color: Color(0xFF8A8A8D),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                if (amount != null) ...[
                  Spacer(),
                  Center(
                    child: "${amount ?? 0} UZS"
                        .s(17.r)
                        .w(500)
                        .c(Color(0xFF326BFF)),
                  ),
                ],
              ],
            ),
          ),
          Divider(
            color: Color(0xFFB9B9B9),
            thickness: 1,
            indent: 60.r,
            endIndent: 10.r,
          ),
        ],
      ),
    );
  }
}
