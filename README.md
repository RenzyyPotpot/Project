Good Day Sir Josh, This part is the documentation of on how the flutter application functioning and created. 

First of all is to create main.dart which the main of the files that been created, our team declare the StatelessWidget and StatefulWidget, meaning the widget can be changes and some widgets cannot be changes. 

dit ay kailangang gamitin ang tinatawag na Overrride, Bakit? --basahin ang paliwanag sa baba. 

@override Annotation:

Sa parehong halimbawa (StatelessWidget at StatefulWidget), ginagamit natin ang @override annotation sa build method. Ito ay nagsasaad na ating pinapalitan ang default implementation ng build method mula sa parent class.
Bakit Kailangan ng override?:

Ang override ay nakakatulong upang mas malinaw na ipakita na ang isang method ay sadyang pinapalitan, at ito rin ay naglalagay ng error sa panahon ng compilation kung ang method ay hindi umiiral sa parent class. Nakakatulong ito upang maiwasan ang mga typo o maling method signature na maaaring magdulot ng bugs.
