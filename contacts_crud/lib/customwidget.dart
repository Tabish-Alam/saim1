import 'package:contacts_crud/properties.dart';
import 'package:flutter/cupertino.dart';

black_text({write_text}) {
  return Text(
    write_text,
    style: TextStyle(color: select_color().black_text_color),
  );
}
