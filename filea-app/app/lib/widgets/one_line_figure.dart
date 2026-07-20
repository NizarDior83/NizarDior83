import 'package:flutter/material.dart';

/// Placeholder pose art: "the thread" — one continuous 2px-feel stroke,
/// per BRAND_KIT.md 2b. Replaced later by Léa illustrations
/// (assets/images/pose_<id>.png from GEMINI_ASSET_PROMPTS.md).
class OneLineFigure extends StatelessWidget {
  final int variant; // 0 standing reach · 1 seated · 2 folded/floor
  final Color color;
  final double size;

  const OneLineFigure({
    super.key,
    required this.variant,
    required this.color,
    this.size = 220,
  });

  @override
  Widget build(BuildContext context) => CustomPaint(
        size: Size(size, size),
        painter: _ThreadPainter(variant, color),
      );
}

class _ThreadPainter extends CustomPainter {
  final int variant;
  final Color color;
  _ThreadPainter(this.variant, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final w = size.width, h = size.height;
    final path = Path();

    switch (variant) {
      case 0: // standing figure, arms reaching up in an arc
        path.moveTo(w * .30, h * .18);
        path.quadraticBezierTo(w * .50, h * .02, w * .70, h * .18); // arms arc
        path.moveTo(w * .50, h * .14);
        path.addOval(Rect.fromCircle(center: Offset(w * .50, h * .22), radius: w * .08)); // head
        path.moveTo(w * .50, h * .30);
        path.quadraticBezierTo(w * .52, h * .55, w * .48, h * .70); // torso
        path.quadraticBezierTo(w * .42, h * .85, w * .40, h * .95); // leg
        path.moveTo(w * .48, h * .70);
        path.quadraticBezierTo(w * .58, h * .85, w * .60, h * .95); // leg
      case 1: // seated cross-legged figure
        path.addOval(Rect.fromCircle(center: Offset(w * .50, h * .25), radius: w * .09)); // head
        path.moveTo(w * .50, h * .34);
        path.quadraticBezierTo(w * .50, h * .52, w * .50, h * .62); // upright spine
        path.moveTo(w * .30, h * .74);
        path.quadraticBezierTo(w * .50, h * .58, w * .70, h * .74); // crossed legs arc
        path.quadraticBezierTo(w * .50, h * .84, w * .30, h * .74);
        path.moveTo(w * .50, h * .44);
        path.quadraticBezierTo(w * .34, h * .52, w * .32, h * .64); // arm to knee
        path.moveTo(w * .50, h * .44);
        path.quadraticBezierTo(w * .66, h * .52, w * .68, h * .64); // arm to knee
      default: // folded / floor pose (child's pose silhouette)
        path.addOval(Rect.fromCircle(center: Offset(w * .22, h * .62), radius: w * .07)); // head
        path.moveTo(w * .28, h * .58);
        path.quadraticBezierTo(w * .45, h * .38, w * .62, h * .48); // rounded back
        path.quadraticBezierTo(w * .78, h * .58, w * .76, h * .74); // hips down
        path.moveTo(w * .20, h * .70);
        path.quadraticBezierTo(w * .40, h * .76, w * .60, h * .76); // arms/floor line
    }

    canvas.drawPath(path, p);
  }

  @override
  bool shouldRepaint(_ThreadPainter old) =>
      old.variant != variant || old.color != color;
}

/// The thread as progress line — used in the Player.
class ThreadProgressBar extends StatelessWidget {
  final double progress; // 0..1
  final Color color;
  final Color track;
  const ThreadProgressBar(
      {super.key, required this.progress, required this.color, required this.track});

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: LinearProgressIndicator(
          value: progress.clamp(0.0, 1.0),
          minHeight: 4,
          backgroundColor: track,
          valueColor: AlwaysStoppedAnimation(color),
        ),
      );
}
