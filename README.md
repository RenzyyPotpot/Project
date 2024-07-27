Good Day Sir Josh, This part is the documentation of on how the flutter application functioning and created. 

First of all is to create main.dart which the main of the files that been created, our team declare the StatelessWidget and StatefulWidget, meaning the widget can be changes and some widgets cannot be changes. 

dit ay kailangang gamitin ang tinatawag na Overrride, Bakit? --basahin ang paliwanag sa baba. 

@override Annotation:

Sa parehong halimbawa (StatelessWidget at StatefulWidget), ginagamit natin ang @override annotation sa build method. Ito ay nagsasaad na ating pinapalitan ang default implementation ng build method mula sa parent class.
Bakit Kailangan ng override?:

Ang override ay nakakatulong upang mas malinaw na ipakita na ang isang method ay sadyang pinapalitan, at ito rin ay naglalagay ng error sa panahon ng compilation kung ang method ay hindi umiiral sa parent class. Nakakatulong ito upang maiwasan ang mga typo o maling method signature na maaaring magdulot ng bugs.


Hi Im Jericho in my part is the MODELS here my explanation:

These files define three different classes: Category, Item, and Sale. Here's a detailed explanation:

defines a Category class.The Category class has two properties:name: A string that represents the name of the category.items: A list of Item objects representing the items in this category.The constructor for the Category class requires both name and items to be provided when creating an instance of Category.

This file defines an Item class.The Item class has two properties:name: A string that represents the name of the item.price: A double that represents the price of the item.The constructor for the Item class requires both name and price to be provided when creating an instance of Item.

This file defines a Sale class.The Sale class has three properties:items: A list of Item objects representing the items in this sale.total: A double that represents the total amount of the sale.dateTime: A DateTime object that represents the date and time of the sale.The constructor for the Sale class requires items, total, and dateTime to be provided when creating an instance of Sale.

The Category class groups together multiple Item objects.The Item class represents an individual item with a name and price.The Sale class represents a sale transaction with a list of items, the total amount of the sale, and the date and time of the sale.


Hi im Carl Aaron Ramos and my part is the RECIEPT sales, sales history and here my explanation:

RECEIPT SCREEN

The provided Dart code defines a Flutter widget named "ReceiptScreen, which is a stateless widget displaying a receipt screen. The screen shows a list of purchased items and the total cost.

Here's a breakdown of the code:

1. Imports:

import "package: flutter/material.dart":" imports Flutter's material design package.

import 'package: form_validation/models/it em.dart'; imports the Item' model from the specified path.

2. ReceiptScreen Class:

ReceiptScreen is a StatelessWidget, meaning its state cannot change over time.

The class has two properties: cart (a list of Item objects) and total (a double representing the total price).

The constructor requires both cart and total to be provided.

3. build Method:

The build method describes how to display the widget.

Scaffold is a basic material design

layout structure, which provides an app bar and body.

The AppBar displays the title 'Receipt'.

The body consists of a 'Padding widget to add padding around its child.

Inside the 'Padding widget, a "Column widget arranges its children vertically:

A Text widget displays the title 'Receipt' with a larger font size and bold weight.

A SizedBox provides vertical spacing of 20 pixels.

An Expanded widget contains a "ListView.builder, which dynamically builds a list of items in the cart. For each item, a "ListTile displays the item's name and price.

Another SizedBox adds vertical spacing.

A Row widget aligns its children horizontally to display the Total label and the total price in a bold font.

Explanation of Key Widgets and Elements

Scaffold: Provides a high-level structure for the screen, including an app bar and body.

AppBar. A material design app bar displaying

the title. Padding: Adds padding around the content.

Column: Vertically arranges its child widgets.

Text: Displays text with specified styles.

SizedBox: Adds space between widgets.

Expanded: Expands its child to fill available space, allowing the 'ListView to take as much vertical space as needed.

ListView.builder: Efficiently creates a scrollable list of items based on the cart length.

ListTile: Displays each item's name and price

in a list format.

Row: Horizontally arranges its children to display the total label and total amount.

Explanation of sales_history_screen.dart

The CartScreen" class is a "Statefulwidget in Flutter that displays the current user's shopping cart. It allows the user to remove items from the cart and proceed to checkout, where the items are added to the sales history and the receipt is displayed.

Imports

import package flutter/material.dart Imports the Material Design package for Flutter.

import package: form validation/models/item.d art: Imports the 'Item' model from a specific path.

import 'package: form_validation/models/sales. dart: Imports the 'Sales model from a specific path.

import package: forn_validation/sales_history dart: Imports the SalesHistory class

import cart-item tile.dart":"

Imports the CartItemTile widget. import receipt_screen.dart';"

Imports the 'ReceiptScreen widget


CartScreen Class

The CartScreen class inherits from "Statefulwidget", which means its state can change over time. It has one property: "cart" (a list of Item objects).

Computes the total price of items in the cart, creates a new sale object, adds it to the sales history, and navigates to the "ReceiptScreen". Upon returning to the CartScreen', it clears the cart


Explanation of each part 

1. Scaffold: Provides a high-level structure for the screen, including the app bar and body.

2. AppBar: Displays an app bar with the title Cart

3. Column: Arranges the child widgets vertically.

4. Expanded: Expands the child widget to fill the available space, allowing the "ListView to take up as much vertical space as needed

5. ListView.builder: Efficiently creates a scrollable list of items based on the length of the cart

6. CartitemTile: Displays each item with a name and a button to remove it from the cart

7. Padding: Adds padding around the child widgets.

8. Row: Arranges the child widgets horizontally

to display the label Total' and the total amount

9. ElevatedButton: A button that allows the user to checkout. When pressed, it calls the checkout method.

Carlaaron
Explanation of sales_history.dart The CartScreen' class is a 'Statefulwidget

in Flutter that displays the user's shopping cart. It allows users to remove items from the cart and proceed to checkout. When checking out, the Items are added to the sales history, and the receipt is displayed.

Imports

Import 'package: flutter/material.dart": Imports the Material Design package for Flutter.

import package: form_validation/models/item.d art: Imports the "Iten model from a specific path.

import package: form validation/models/sales.dart': Imports the "Sale model from a specific path

Import 'package: form validation/sales_history dart: Imports the SalesHistory class.

import 'cart-iten_tile.dart

Imports the CartItemTile widget import 'receipt_screen.dart';:

Imports the ReceiptScreen widget.

CartScreen Class

The CartScreen' class is a 'Statefulwidget", which means it can have a mutable state. It has one property cart', which is a list of Item objects

Constructor
const CartScreen((super.key, required th

The constructor requires a list of Item objects as a parameter (cart').

_CartScreenState Class

This class manages the state of theCartScreen

CHECKOUT METHOD

. Calculates the total price of the items in the cart

2. Creates a new 'Sale' object with the current items, total price, and current date/time.

3. Adds this sale to the sales history. 

4. Navigates to the 'ReceiptScreen to show the receipt.

5. Clears the cart when returning to the cart screen.

BUILD METHOD

1. Scaffold: Provides the basic structure for the screen, including the app bar and body.

2. AppBar: Displays the app bar with the title Cart

3. Column: Arranges the child widgets vertically.

4. Expanded: Expands the child widget to fill the available space, allowing the ListView to take up as much vertical space as needed.

5. ListView.builder: Creates a scrollable list of items in the cart based on the cart length.

6. CartitemTile: Displays each item with its name and a button to remove it from the cart

7. Padding: Adds padding around the child widgets.

8. Row: Arranges the child widgets horizontally to display the label 'Total and the total amount

9. ElevatedButton: A button that allows the user to checkout. When pressed, it calls the checkout method.
