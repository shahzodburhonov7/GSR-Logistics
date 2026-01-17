import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DebtToggle extends StatelessWidget {
  final List<Map<String, dynamic>> options;
  final int selectedIndex;
  final Function(int) onTap;

  const DebtToggle({
    super.key,
    required this.options,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:  EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(options.length, (index) {
          return _buildButton(
            title: options[index]['title'],
            isSelected: selectedIndex == index,
            onPressed: () {
              options[index]['onTap']();
              onTap(index);
            },
          );
        }),
      ),
    );
  }

  Widget _buildButton({
    required String title,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding:  REdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3D68FF) : Colors.transparent,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16.r,
          ),
        ),
      ),
    );
  }
}
