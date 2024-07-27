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
