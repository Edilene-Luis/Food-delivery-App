import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Hamburgers
    Food(
      description:
          "Hambúrguer suculento com cheddar derretido, alface, tomate e um toque de cebola",
      imagePath: "assets/images/burgers/hamburguer_one.png",
      name: "Cheeseburger Clássico",
      price: 500, // AOA
      availableAddons: [
        Addon(name: 'Queijo Extra', price: 500),
        Addon(name: 'Bacon', price: 1000),
        Addon(name: 'Abacate', price: 1500),
      ],
      category: FoodCategory.hamburgueres,
    ),
    Food(
      description:
          "Dois hambúrgueres de carne, queijo extra, alface e nosso molho especial",
      imagePath: "assets/images/burgers/hamburguer_duplo.png",
      name: "Hambúrguer Duplo",
      price: 1000,
      availableAddons: [
        Addon(name: 'Cebolas Grelhadas', price: 500),
        Addon(name: 'Picles', price: 250),
      ],
      category: FoodCategory.hamburgueres,
    ),
    Food(
      description:
          "Hambúrguer vegetal com alface fresca, tomate e maionese vegana",
      imagePath: "assets/images/burgers/hamburguer_duplo.png",
      name: "Hambúrguer Vegetariano",
      price: 750,
      availableAddons: [
        Addon(name: 'Queijo Vegano', price: 650),
        Addon(name: 'Cogumelos', price: 450),
      ],
      category: FoodCategory.hamburgueres,
    ),
    Food(
      description: "Dois hambúrgueres, queijo, alface, tomate e picles",
      imagePath: "assets/images/burgers/hamburguer_duplo.png",
      name: "Hambúrguer Duplo com Queijo",
      price: 1250,
      availableAddons: [
        Addon(name: 'Ovo Frito', price: 750),
        Addon(name: 'Jalapeños', price: 400),
      ],
      category: FoodCategory.hamburgueres,
    ),

    // Salads
    Food(
      description: "Mix refrescante de frutas tropicais e folhas verdes",
      imagePath: "assets/images/salads/salada_brisa_tropical.png",
      name: "Salada Brisa Tropical",
      price: 1500,
      availableAddons: [
        Addon(name: 'Molho de Mel', price: 300),
        Addon(name: 'Croutons', price: 250),
      ],
      category: FoodCategory.saladas,
    ),
    Food(
      description: "Salada com frutas da época e molho leve",
      imagePath: "assets/images/salads/salada_com_frutas.png",
      name: "Salada de Frutas",
      price: 1250,
      availableAddons: [
        Addon(name: 'Iogurte', price: 500),
        Addon(name: 'Granola', price: 450),
      ],
      category: FoodCategory.saladas,
    ),
    Food(
      description: "Salada equilibrada para te manter com energia",
      imagePath: "assets/images/salads/salada_copilot.png",
      name: "Salada CoPiloto",
      price: 1400,
      availableAddons: [
        Addon(name: 'Ovo Cozido', price: 400),
        Addon(name: 'Atum', price: 650),
      ],
      category: FoodCategory.saladas,
    ),
    Food(
      description: "Estilo mediterrâneo com azeitonas, queijo feta e tomate",
      imagePath: "assets/images/salads/salada_mediterrania.png",
      name: "Salada Mediterrânea",
      price: 1650,
      availableAddons: [
        Addon(name: 'Azeitonas Extras', price: 350),
        Addon(name: 'Húmus', price: 500),
      ],
      category: FoodCategory.saladas,
    ),

    // Sides
    Food(
      description: "Batatas fritas douradas e crocantes",
      imagePath: "assets/images/sides/batata_frita.png",
      name: "Batata Frita",
      price: 750,
      availableAddons: [
        Addon(name: 'Ketchup', price: 150),
        Addon(name: 'Molho Cheddar', price: 350),
      ],
      category: FoodCategory.acompanhamentos,
    ),
    Food(
      description: "Anéis de cebola clássicos com um toque adocicado",
      imagePath: "assets/images/sides/rings_onion_batdoce.png",
      name: "Anéis de Cebola Doces",
      price: 1000,
      availableAddons: [Addon(name: 'Molho Sweet Chili', price: 300)],
      category: FoodCategory.acompanhamentos,
    ),
    Food(
      description: "Anéis de cebola crocantes e deliciosos",
      imagePath: "assets/images/sides/rings.png",
      name: "Anéis de Cebola",
      price: 900,
      availableAddons: [
        Addon(name: 'Molho Barbecue', price: 300),
        Addon(name: 'Maionese de Alho', price: 350),
      ],
      category: FoodCategory.acompanhamentos,
    ),

    // Desserts
    Food(
      description: "Bolo de morango com camadas cremosas",
      imagePath: "assets/images/desserts/bolo_morango.png",
      name: "Bolo de Morango",
      price: 1500,
      availableAddons: [
        Addon(name: 'Chantilly', price: 300),
        Addon(name: 'Morango Extra', price: 400),
      ],
      category: FoodCategory.sobremesas,
    ),
    Food(
      description: "Gelado frio e cremoso",
      imagePath: "assets/images/desserts/gelado.png",
      name: "Gelado",
      price: 750,
      availableAddons: [
        Addon(name: 'Calda de Chocolate', price: 250),
        Addon(name: 'Granulado', price: 200),
      ],
      category: FoodCategory.sobremesas,
    ),
    Food(
      description: "Mousse de chocolate rica e cremosa",
      imagePath: "assets/images/desserts/mousse_chocolate.png",
      name: "Mousse de Chocolate",
      price: 1000,
      availableAddons: [Addon(name: 'Chips de Chocolate', price: 350)],
      category: FoodCategory.sobremesas,
    ),
    Food(
      description: "Mousse exótica de maracujá com aroma tropical",
      imagePath: "assets/images/desserts/mousse_maracuja.png",
      name: "Mousse de Maracujá",
      price: 1000,
      availableAddons: [Addon(name: 'Flocos de Coco', price: 300)],
      category: FoodCategory.sobremesas,
    ),
    Food(
      description: "Sobremesa com bolo, gelado e calda",
      imagePath: "assets/images/desserts/sobremesa_bolo_gelado.png",
      name: "Bolo com Gelado",
      price: 1750,
      availableAddons: [
        Addon(name: 'Calda de Caramelo', price: 350),
        Addon(name: 'Nozes Trituradas', price: 400),
      ],
      category: FoodCategory.sobremesas,
    ),

    // Drinks
    Food(
      description: "Limonada fresca com um toque de açúcar",
      imagePath: "assets/images/drinks/limonada_acucarada.png",
      name: "Limonada Doce",
      price: 500,
      availableAddons: [
        Addon(name: 'Gelo Extra', price: 100),
        Addon(name: 'Folhas de Hortelã', price: 150),
      ],
      category: FoodCategory.bebidas,
    ),
    Food(
      description: "Sumo tropical de ananás",
      imagePath: "assets/images/drinks/sumo_ananas.png",
      name: "Sumo de Ananás",
      price: 650,
      availableAddons: [Addon(name: 'Mistura com Água de Coco', price: 250)],
      category: FoodCategory.bebidas,
    ),
    Food(
      description: "Sumo refrescante de laranja",
      imagePath: "assets/images/drinks/sumo_laranja.png",
      name: "Sumo de Laranja",
      price: 600,
      availableAddons: [Addon(name: 'Dose de Vitaminas', price: 400)],
      category: FoodCategory.bebidas,
    ),
    Food(
      description: "Sumo de limão com toque de hortelã",
      imagePath: "assets/images/drinks/sumo_limao_ortela.png",
      name: "Sumo de Limão com Hortelã",
      price: 700,
      availableAddons: [
        Addon(name: 'Shot de Gengibre', price: 300),
        Addon(name: 'Mel', price: 250),
      ],
      category: FoodCategory.bebidas,
    ),
  ];

  //Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Aqui está o seu recibo.");
    receipt.writeln();

    String formatDate = DateFormat(
      "yyyy-MM-dd HH:mm:ss",
    ).format(DateTime.now());
    receipt.writeln(formatDate);
    receipt.writeln();
    receipt.writeln("========================================");
    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity}x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
          "Complementos: ${_formatAddons(cartItem.selectedAddons)}",
        );
      }
      receipt.writeln();
    }
    receipt.write("========================================");
    receipt.writeln();
    receipt.writeln("Total de Itens: ${getTotalItemCount()}");
    receipt.writeln("Preço Total: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "${price.toStringAsFixed(2)} AOA";
  }

  String _formatAddons(List<Addon> addons) {
    if (addons.isEmpty) return "Sem Complementos";
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
