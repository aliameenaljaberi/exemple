import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        endDrawer: drawer(),
        body: myu(),
      ),
    ));

class myu extends StatelessWidget {
  const myu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Image(image: AssetImage('assets/images/2.jpeg')),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double a = 199;
  double m = 190;
  String im = "assets/images/1.jpeg";
  TextEditingController n = TextEditingController();
  TextEditingController ctex = TextEditingController();
  TextEditingController hit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    n.text = im;
    return Scaffold(
      appBar: AppBar(
        title: Text('معالجه الصوره'),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.blue,
              ),
              child: Center(
                child: Text("معالجة الصورة "),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("بيانات الصورة"),
            Center(
                child: Image.asset(
              im,
              height: m,
              width: a,
            )),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ctex,
                      decoration: InputDecoration(
                          labelText: 'الطول',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(59)),
                          )),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: hit,
                      decoration: InputDecoration(
                          labelText: 'العرض',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(59)),
                          )),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              controller: n,
              decoration: InputDecoration(
                  hintText: 'الرابط',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(59)),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 90,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        m = double.parse(ctex.text);
                        a = double.parse(hit.text);
                        im = n.text;
                        setState(() {});
                      },
                      child: Text("معالجة"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 90,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        m -= double.parse(ctex.text);
                        a -= double.parse(hit.text);
                        setState(() {});
                      },
                      child: Text("تصغير"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 90,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        m += double.parse(ctex.text);
                        a += double.parse(hit.text);
                        setState(() {});
                      },
                      child: Text("تكبير"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 90,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          ctex.text = "";
                          hit.text = "";
                          setState(() {});
                        },
                        child: Text("تراجع"),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text("فوتشوب"),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          height: 200,
          child: Center(child: Text('فوتوشوب')),
        ),
        Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  " الرئيسه ",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " التعديل علئ الصوره ",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyWidget()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " تغير الثيم ",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => al()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " خروج",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class al extends StatelessWidget {
  const al({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          height: 200,
          child: Center(child: Text('فوتوشوب')),
        ),
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " الرئيسه ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => myu()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " التعديل علئ الصوره ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyWidget()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " تغير الثيم ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => drawer()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " خروج",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
