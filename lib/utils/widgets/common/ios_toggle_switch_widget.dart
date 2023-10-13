import '../../../values/config/app_exports.dart';

class IosToggleSwitch extends StatefulWidget {
  const IosToggleSwitch({
    super.key,
    required this.onTap,
    required this.isActive,
  });

  final void Function() onTap;
  final bool isActive;

  @override
  State<IosToggleSwitch> createState() => _IosToggleSwitchState();
}

class _IosToggleSwitchState extends State<IosToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 31.0,
        width: 51.0,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: widget.isActive
              ? const Color(0xff34c759)
              : const Color(0xffe9e9ea),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment:
              widget.isActive ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: 27,
              height: 27,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  widget.isActive
                      ? const BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(-2, 2),
                          blurRadius: 2,
                        )
                      : const BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(2, 2),
                          blurRadius: 2,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
