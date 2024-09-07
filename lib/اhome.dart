import 'package:flutter/material.dart';
import 'package:weddingapp/register.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> supplierCategories = [
    {'name': 'Flowers', 'image': 'https://i.pinimg.com/564x/3d/e4/45/3de44542a8252241238cab1f6050d319.jpg'},
    {'name': 'Decoration', 'image': 'https://i.pinimg.com/564x/78/8e/fd/788efded9abc113d1a6ec0e0e023a8f1.jpg'},
    {'name': 'Videographers', 'image': 'https://i.pinimg.com/564x/b5/cb/f1/b5cbf1f08bffb4e5a71d9f1fdf8a9b0e.jpg'},
    {'name': 'MakeUp Artist', 'image': 'https://i.pinimg.com/564x/8b/fc/77/8bfc77260608697a0bd6a2443ee35e7a.jpg'},
    {'name': 'Jewellary', 'image': 'https://i.pinimg.com/564x/2f/59/56/2f59563cfbdb4c076e6ea35ea71359e0.jpg'},
    {'name': 'Suits', 'image': 'https://i.pinimg.com/564x/ce/1f/cb/ce1fcbc19857cc396c3a606233cdc13a.jpg'},
    {'name': 'Dresses', 'image': 'https://i.pinimg.com/564x/44/92/77/44927766d65c3b00ecfffb39ef3efd86.jpg'},
  ];

  final List<Map<String, dynamic>> recommendedPhotographers = [
    {
      'name': 'LOREM IPSUM',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx-IkAxbikq2XMtq5I6FYEFwsMc39aV0lJjsBONuV93T8vjf-YJgA5YWQP3efNC7PLm6o&usqp=CAU',
      'location': 'New York, NY',
      'rating': 4.5
    },
    {
      'name': 'Robert Capa',
      'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTiRdVttUOJnsTOMlov1kF3Kjdvdj-l8b0g2IG3ycn8_MyStTMM',
      'location': 'Los Angeles, CA',
      'rating': 4.7
    },
    {
      'name': 'Ansel Adams',
      'image': 'https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcRe2YrSSMrBEOCfUgmsJBkWDDFuXhBq_ACpchPyVKbi7uNqNb1gT7CTk6CDv-WstSVh',
      'location': 'Mansora, IL',
      'rating': 4
    },
    {
      'name': 'Cindy Sherman',
      'image': 'https://i.pinimg.com/236x/ac/06/0c/ac060ca082986f0b1834eec81e694b20.jpg',
      'location': 'Chicago, IL',
      'rating': 3.1
    },
    {
      'name': 'Annie Leibovitz',
      'image': 'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcSo2kU40yuYOwZ8qqlfQ3XMnDOP9e9eZHMR9E41bmvHY4Ljln23pq5GcuK2TPu7Xrl3',
      'location': 'American',
      'rating': 4.8
    },
  ];

  String? selectedCategory = 'All';
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredCategories = selectedCategory == 'All'
        ? supplierCategories
        : supplierCategories.where((category) => category['name'] == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(215, 95, 55, 227),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Icon(Icons.person,color: Color.fromRGBO(255, 255, 255, 1),size: 60,)),
            
            Padding(
              
              padding: const EdgeInsets.only(left:10.0),
              child: ListTile(
                leading: const Icon(Icons.home_filled,color: Color.fromRGBO(255, 255, 255, 1),),
                onTap: (){
                   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> HomePage()));
                },
                title: 
               Text("Home",
               style:TextStyle(fontSize:25,color: const Color.fromARGB(255, 255, 255, 255)),),
              ),
    
            ),
            Padding(
              
              padding: const EdgeInsets.only(left:10.0),
              child: ListTile(
                leading: const Icon(Icons.settings,color: Color.fromRGBO(255, 255, 255, 1),),
                onTap: (){
                 
                },
                title: 
               Text("Setting",style:TextStyle(fontSize:25,color: const Color.fromARGB(255, 255, 255, 255)),),
              ),
              
            ),
            Padding(
              
              padding: const EdgeInsets.only(left:10.0),
              child: ListTile(
                leading: const Icon(Icons.contact_emergency,color: Color.fromRGBO(255, 255, 255, 1),),
                onTap: (){
               
                },
                title: 
               Text("Contact_Us",style:TextStyle(fontSize:25,color: const Color.fromARGB(255, 255, 255, 255)),),
              ),
              
            ),
                Padding(
              
              padding: const EdgeInsets.only(left:10.0),
              child: ListTile(
                leading: const Icon(Icons.logout_rounded,color: Color.fromRGBO(255, 255, 255, 1),),
                onTap: (){
                   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                },
                title: 
               Text("LogOut",style:TextStyle(fontSize:25,color: const Color.fromARGB(255, 255, 255, 255)),),
              ),
              
            ),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://i.pinimg.com/736x/bb/ef/f6/bbeff6bd281f7a6f0150d9f136a8f5e1.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedCategory,
                      hint: const Text('Select Category',style: TextStyle(color: Colors.white),),
                      isExpanded: true,
                      items: ['All', ...supplierCategories.map((category) => category['name']!)].map((categoryName) {
                        return DropdownMenuItem<String>(
                          value: categoryName,
                          child: Text(categoryName),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCategory = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(159, 95, 55, 227),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(100, 50), // width
                        maximumSize: Size(200, double.infinity),
                      ),
                      onPressed: () {
                        // Implement search functionality
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Suppliers Category',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filteredCategories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          filteredCategories[index]['image']!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          filteredCategories[index]['name']!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recommended Photographers',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedPhotographers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          recommendedPhotographers[index]['image']!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          recommendedPhotographers[index]['name']!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          recommendedPhotographers[index]['location']!,
                          style: const TextStyle(color: Colors.white54),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (starIndex) {
                            if (starIndex < recommendedPhotographers[index]['rating']) {
                              return const Icon(Icons.star, color: Colors.yellow, size: 16);
                            } else {
                              return const Icon(Icons.star_border, color: Colors.yellow, size: 16);
                            }
                          }),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
