import 'package:flutter/material.dart';
import 'package:fsmart_smarthome_riverpod/features/home/model/smart_item_model.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SmartItemModel> smartItemModel = SmartItemModel.smartItemList;
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          )
        ],
      ),
      //Drawer
      drawer: const Drawer(),
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome, Oğuz',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              _dropDownMenu(context),
              context.sized.emptySizedHeightBoxLow,
              GridView.count(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1.5,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: smartItemModel
                      .map((e) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    e.icon,
                                    size: 48,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  context.sized.emptySizedHeightBoxLow,
                                  Text(e.title),
                                  Text(e.subTitle,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                ],
                              ),
                            ),
                          ))
                      .toList())
            ],
          ),
        ),
      ),
    );
  }

  Card _dropDownMenu(BuildContext context) {
    return Card(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          itemHeight: 80,
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(16),
          icon: const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          value: 0,
          items: List.generate(
              3,
              (index) => DropdownMenuItem(
                  value: index,
                  child: SizedBox(
                    width: context.general.mediaQuery.size.width - 84,
                    child: ListTile(
                      leading: const CircleAvatar(
                          child: Icon(Icons.holiday_village_rounded)),
                      title: Text('House ${index + 1}'),
                      subtitle: const Text(
                        '395 Amherst St, East Orange, NJ',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ))),
          onChanged: (value) => debugPrint(value.toString()),
        ),
      ),
    );
  }
}
