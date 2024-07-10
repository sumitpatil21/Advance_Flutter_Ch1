import 'package:advance_flutter_ch1/Screen/Provider&ChangeThemeusingProvider/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderTheme extends StatelessWidget {
  const ProviderTheme({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderClass providertrue=Provider.of<ProviderClass>(context);
    ProviderClass providerfalse=Provider.of<ProviderClass>(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios,size: 30,),
                Icon(Icons.add_circle_outline_outlined,size: 30,),
              ],
            ),
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-Image.png"),
          ),
          SizedBox(height: 15,),
          Text("Testing User",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
          Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  providertrue.IsDark?Icon(Icons.dark_mode,size: 30,color: Colors.orange.shade700,):Icon(Icons.sunny,size: 30,color: Colors.purple.shade500,),
                  SizedBox(width: 50,),
                  providertrue.IsDark?Text("Light Mode",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),):Text("Dark Mode",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
                  SizedBox(width: 120,),
                  Switch(value: providertrue.IsDark, onChanged: (value) {
                    providerfalse.ThemeChange();
                  },)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.grid_on,size: 30,color: providertrue.IsDark?Colors.green:Colors.blue,),
                  SizedBox(width: 50,),
                  Text("Story",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.settings,size: 30,color: providertrue.IsDark?Colors.blue:Colors.red,),
                  SizedBox(width: 50,),
                  Text("Setting and Privacy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.message,size: 30,color: providertrue.IsDark?Colors.orange.shade700:Colors.yellow),
                  SizedBox(width: 50,),
                  Text("Help Center",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.notifications,size: 30,color: providertrue.IsDark?Colors.yellow:Colors.orange.shade700,),
                  SizedBox(width: 50,),
                  Text("Notification",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
                ],
              ),
              SizedBox(height: 30,),

            ],
          )
        ],
      ),
    );
  }
}
