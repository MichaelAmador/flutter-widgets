import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportations { car, plane, boat, ship, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportations selectedTransportation = Transportations.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Additional controls'),
            value: isDeveloper,
            onChanged: (value) {
              isDeveloper = value;
              setState(() {});
            }),
        ExpansionTile(
          title: const Text('Ways of transportations'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('On the road'),
                value: Transportations.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportations.car;
                    })),
            RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('On the sea'),
                value: Transportations.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportations.boat;
                    })),
            RadioListTile(
                title: const Text('By plane'),
                subtitle: const Text('On the air'),
                value: Transportations.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportations.plane;
                    })),
            RadioListTile(
                title: const Text('By ship'),
                subtitle: const Text('On the ocean'),
                value: Transportations.ship,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportations.ship;
                    })),
            RadioListTile(
                title: const Text('By submarine'),
                subtitle: const Text('Underwater'),
                value: Transportations.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportations.submarine;
                    })),
          ],
        ),
        CheckboxListTile(
            title: const Text('Wanna have breakfast?'),
            subtitle: const Text('Included'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            title: const Text('Wanna have lunch?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text('Wanna have dinner?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
