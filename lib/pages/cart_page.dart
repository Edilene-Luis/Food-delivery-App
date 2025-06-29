import 'package:flutter/material.dart';
import 'package:food_delivery/components/buttom.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final useCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: Text("Carrinho"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            "Tem certeza que deseja limpar o carrinho?",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("Cancelar"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: Text("Sim"),
                            ),
                          ],
                        ),
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    useCart.isEmpty
                        ? Expanded(
                          child: Center(child: Text("Carrinho está vazio...")),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: useCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = useCart[index];

                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              MyButton(
                text: "Ir para o pagamento",
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentPage()),
                    ),
              ),
              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
