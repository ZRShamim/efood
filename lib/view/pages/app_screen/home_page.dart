import 'package:efood/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBG,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      LottieBuilder.asset('assets/lottie/food-delivery.json',
                          width: 35),
                      const Text(
                        'eFood',
                        style: TextStyle(color: mainColor, fontSize: 20),
                      ),
                    ],
                  ),
                  const Icon(Icons.notifications_outlined),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  fillColor: offWhite,
                  filled: true,
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune_outlined,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'All Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 5,
                color: mainBG,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, i) {
                        return const CategoryTab();
                      }),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Set Menu',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('See All')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, i) {
                    return const SetMenuCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: mainColor, borderRadius: BorderRadius.circular(50)),
        ),
        const Text('Bengali'),
      ],
    );
  }
}

class SetMenuCard extends StatelessWidget {
  const SetMenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var star = List.generate(5, ((index) {
      return const Icon(Icons.star);
    }));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 230,
          height: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: mainBG),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/egg-fried-rice.jpg',
                width: 230,
                height: 130,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Bengali Breakfast'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Set Menu'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                      5,
                      (index) {
                        return const Icon(
                          Icons.star,
                          size: 16,
                          color: mainColor,
                        );
                      },
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$ 50'),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add,size: 20,),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
