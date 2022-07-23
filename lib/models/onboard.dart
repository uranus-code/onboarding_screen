class OnBoard {
  final int id;
  final String imageName;
  final String title, text;

  OnBoard({
    required this.id,
    required this.imageName,
    required this.title,
    required this.text,
  });
}

final List<OnBoard> sliderItems = [
  OnBoard(
    id: 1,
    imageName: "Browse.png",
    title: "Product Variety",
    text:
        "In our store, the variety of products is very large and we have several models of the same product",
  ),
  OnBoard(
    id: 2,
    imageName: "MobileShop.png",
    title: "Payment on the spot",
    text: "You can make your purchases easily and safely online",
  ),
  OnBoard(
    id: 3,
    imageName: "GPS.png",
    title: "Send to all locations",
    text:
        "In our store, all products are sent to all parts of the country and you can rest assured",
  ),
  OnBoard(
    id: 4,
    imageName: "Gift.png",
    title: "quality of products",
    text:
        "Our store is focused on high quality products and the best material will be sent to you",
  ),
  OnBoard(
    id: 5,
    imageName: "Store.png",
    title: "The price is right",
    text:
        "All the products have a high discount and the cheap and original quality material will reach you",
  ),
];
