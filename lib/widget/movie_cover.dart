import 'package:flutter/cupertino.dart';

ListView movies(List<String> moviesCover) {
  return ListView.separated(
    itemCount: moviesCover.length,
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        width: 110,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(moviesCover[index]), fit: BoxFit.cover)),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(
        width: 15,
      );
    },
  );
}
