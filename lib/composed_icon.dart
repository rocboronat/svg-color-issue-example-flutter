import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComposedIcon extends StatelessWidget {
  const ComposedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const size = 32.0;

    const patternFile = 'assets/background-pattern.svg';

    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        color: const Color(0xFF8c95dd),
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              width: size,
              height: size,
              patternFile,
              colorFilter: const ColorFilter.mode(
                Color(0xFF979fe9),
                BlendMode.srcIn,
              ),
            ),
            const Text(
              "F",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
