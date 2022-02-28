import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
	const RecentlyViewed({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
		backgroundColor: Colors.black,
		appBar: AppBar(title: const Text('Recently Viewed')),
		body: Column(
			children: <Widget>[
			Padding(
				padding: const EdgeInsets.all(8.0),
				child: SizedBox(
				child: Row(
					children: <Widget>[
					Flexible(
						child: TextField(
						style: const TextStyle(color: Colors.white),
						cursorColor: Colors.white,
						decoration: InputDecoration(
							fillColor: Colors.grey[800],
							filled: true,
							contentPadding: const EdgeInsets.all(10.0),
							prefixIcon: const Icon(
								Icons.search,
								color: Colors.grey,
							),
							border: OutlineInputBorder(
								borderRadius: BorderRadius.circular(10.0),
							),
							hintText: 'Search using keywords',
							hintStyle: const TextStyle(color: Colors.grey)),
						),
					),
					IconButton(
						color: Colors.grey,
						onPressed: () {},
						icon: const Icon(Icons.tune),
					),
					],
				),
				),
			),
			_myListView(context),
			],
		),
		);
	}
}

Widget _myListView(BuildContext context) {
	// the Expanded widget lets the columns share the space
	Widget column = Expanded(
		child: Column(
			// align the text to the left instead of centered
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
				'Breakfast',
				style: TextStyle(color: Colors.blue[400]),
				),
				const Text(
				'Blueberry Muffins',
				style: TextStyle(color: Colors.white, fontSize: 20),
				),
				Row(
					crossAxisAlignment: CrossAxisAlignment.center,
					children: [
						Icon(
							Icons.star,
							size: 20,
							color: Colors.orange[900],
						),
						const SizedBox(
							width: 5,
						),
						Text(
							"4.5",
							style: TextStyle(
								color: Colors.orange[900],
								fontSize: 15,
							),
						)
					],
				),
				Row(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					children: [
						Row(
						children: const [
							Icon(Icons.timer, color: Colors.grey),
							SizedBox(width: 10),
							Text(
								"45 mins",
								style: TextStyle(color: Colors.grey),
							)
						],
						),
						Row(
							children: const [
								Icon(Icons.restaurant, color: Colors.grey),
								SizedBox(width: 10),
								Text(
									"1 serving",
									style: TextStyle(color: Colors.grey),
								),
							],
						),
					],
				),
			],
		),
	);

	List<Widget> getItems() {
		List<Widget> items = [];
		for (var i = 0; i < 5; i++) {
			items.add(Card(
				color: Colors.grey[800],
				child: Padding(
					padding: const EdgeInsets.all(8.0),
					child: Row(
						children: <Widget>[
							Padding(
								padding: const EdgeInsets.all(8.0),
								child: Image.asset(
								'assets/food.png',
								fit: BoxFit.fill,
								width: 60,
								height: 40,
								),
							),
							column,
							Icon(
								Icons.favorite,
								color: Colors.orange[900],
								size: 25,
							)
							],
					),
				),
				shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(15.0),
				),
			));
		}
		return items;
	}

	return Expanded(child: ListView(shrinkWrap: true, children: getItems()));
}
