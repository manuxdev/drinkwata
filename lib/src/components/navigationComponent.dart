import 'package:flutter/material.dart';

class NavigationComponentWidget extends StatefulWidget {
  const NavigationComponentWidget({
    Key? key,
    int? selectedPageIndex,
    bool? hidden,
  })  : this.selectedPageIndex = selectedPageIndex ?? 1,
        this.hidden = hidden ?? false,
        super(key: key);

  final int selectedPageIndex;
  final bool hidden;

  @override
  _NavigationComponentWidgetState createState() =>
      _NavigationComponentWidgetState();
}

class _NavigationComponentWidgetState extends State<NavigationComponentWidget>
    with TickerProviderStateMixin {
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      child: Container(
        width: 380,
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3D2FC1), Color.fromARGB(255, 33, 20, 150)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                    child: IconButton(
                      splashRadius: 26,
                      style: ButtonStyle(),
                      icon: Icon(
                        Icons.accessible,
                        color: Color.fromARGB(255, 243, 243, 243),
                        size: 24,
                      ),
                      onPressed: () async {},
                    ),
                  ),
                  if (widget.selectedPageIndex == 1)
                    SizedBox(
                      width: 30,
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                    )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                    child: IconButton(
                      style: ButtonStyle(),
                      icon: Icon(
                        Icons.water_drop_outlined,
                        color: Color.fromARGB(255, 243, 243, 243),
                        size: 24,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  if (widget.selectedPageIndex == 2)
                    SizedBox(
                      width: 30,
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                    )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                    child: IconButton(
                      style: ButtonStyle(),
                      icon: Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 243, 243, 243),
                        size: 24,
                      ),
                      onPressed: () async {},
                    ),
                  ),
                  if (widget.selectedPageIndex == 3)
                    SizedBox(
                      width: 30,
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                    )
                ],
              ),
            ]),
      ),
    );
  }
}
