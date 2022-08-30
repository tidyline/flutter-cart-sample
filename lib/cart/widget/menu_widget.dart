import 'package:cart_sample/cart/model/menu.dart';
import 'package:cart_sample/utils/number.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget(this._menu, {Key? key}) : super(key: key);

  final Menu _menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                _menu.name,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    _menu.imageSrc,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _menu.description,
                    style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1.0),
                    ),
                  ),
                  Text(formatPrice(_menu.price)),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildCount(),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

Widget _buildCount() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.withOpacity(0.4)),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          disabledColor: Colors.grey,
          onPressed: null,
        ),
        Text('1'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    ),
  );
}