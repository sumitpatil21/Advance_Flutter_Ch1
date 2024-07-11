import 'package:advance_flutter_ch1/Screen/QuotesData/Modal/QuoteModal.dart';
import 'package:advance_flutter_ch1/Screen/QuotesData/Provider/QuotesProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Quotesdataview extends StatelessWidget {
  const Quotesdataview({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesProvider quotetrue =
        Provider.of<QuotesProvider>(context, listen: true);
    QuotesProvider quotefalse =
    Provider.of<QuotesProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quote Data",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
              itemCount: quotetrue.quotes.length,
              itemBuilder: (context, index) => Card(
                elevation: 10,
                child: ListTile(

                      leading: Text(index.toString()),
                      title: Text(
                        quotetrue.quotes[index]["quote"],style: TextStyle(fontSize: 18,),
                      ),
                      subtitle: Text(quotetrue.quotes[index]["author"],style: TextStyle(fontSize: 15,),),
                  trailing: IconButton(onPressed: () {
                    quotefalse.remvoe(index);
                  }, icon: Icon(Icons.delete)),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Alert(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Alert(context)
{
  QuotesProvider quotefalse =
  Provider.of<QuotesProvider>(context, listen: false);
  showDialog(context: context, builder: (context) =>  AlertDialog(
    title: Text("Quotes Add"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: txtquote,
          decoration: InputDecoration(
              label: Text("Quotes"),
              hintText: "Quotes",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
              )
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: txtauthor,
          decoration: InputDecoration(
              label: Text("Author"),
              hintText: "Author",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
              )
          ),
        ),
      ],
    ),
    actions: [
      TextButton(onPressed: () {
        quotefalse.addData();
      }, child:Text("Submit")),
      TextButton(onPressed: () {
        Navigator.of(context).pop();
      }, child: Text("Cancel")),
    ],
  ),);
}