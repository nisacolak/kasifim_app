import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {
  bool _isFavoriteClick = false;
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 7, top: 7),
      child: SizedBox(
          child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => GestureDetector(
                    child: _isFavoriteClick
                        ? AnimatedSwitcher(
                            switchInCurve: Curves.easeInOutBack,
                            transitionBuilder: (child, animation) =>
                                ScaleTransition(
                                  scale: animation,
                                  child: child,
                                ),
                            duration: const Duration(milliseconds: 350),
                            child: Icon(Icons.favorite,
                                size: 25,
                                color: ColorName.orange,
                                key: ValueKey(
                                  'favorite',
                                )))
                        : AnimatedSwitcher(
                            switchInCurve: Curves.easeInOutBack,
                            transitionBuilder: (child, animation) =>
                                ScaleTransition(
                              scale: animation,
                              child: child,
                            ),
                            duration: const Duration(milliseconds: 350),
                            child: Icon(
                              Icons.favorite_sharp,
                              size: 25,
                              color: ColorName.white,
                              key: const ValueKey('notFavorite'),
                            ),
                          ),
                    onTap: () {
                      setState(() {
                        _isFavoriteClick = !_isFavoriteClick;
                      });
                    },
                  ))),
    );
  }
}
