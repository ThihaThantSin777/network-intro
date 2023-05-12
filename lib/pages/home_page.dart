import 'package:flutter/material.dart';
import 'package:network_layar_intro/data/model/covid_model.dart';
import 'package:network_layar_intro/data/model/covid_model_impl.dart';
import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';
import 'package:network_layar_intro/data/vos/global_vo/global_vo.dart';
import 'package:network_layar_intro/pages/screen_2.dart';

final CovidModel _covidModel = CovidModelImpl();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Screen2()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Covid Summary'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: GlobalItemView()),
          Expanded(child: CountriesItemView())
        ],
      ),
    );
  }
}

class GlobalItemView extends StatelessWidget {
  const GlobalItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GlobalVO?>(
      future: _covidModel.getGlobals(),
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapShot.hasError) {
          return const Center(
            child: Text("Error Fetching"),
          );
        }
        final globalData = snapShot.data;
        return GlobalView(globalVO: globalData);
      },
    );
  }
}

class GlobalView extends StatelessWidget {
  const GlobalView({Key? key, required this.globalVO}) : super(key: key);
  final GlobalVO? globalVO;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('GLOBAL'),
        const SizedBox(
          height: 10,
        ),
        Text('New Confirm====> ${globalVO?.newConfirmed}'),
        const SizedBox(
          height: 10,
        ),
        Text('TotalConfirmed====> ${globalVO?.totalConfirmed}'),
        const SizedBox(
          height: 10,
        ),
        Text('New Death====> ${globalVO?.newDeaths}'),
        const SizedBox(
          height: 10,
        ),
        Text('Total Death====> ${globalVO?.totalDeaths}'),
        const SizedBox(
          height: 10,
        ),
        Text('NewRecovered====> ${globalVO?.newRecovered}'),
        const SizedBox(
          height: 10,
        ),
        Text('Date====> ${globalVO?.date}')
      ],
    );
  }
}

class CountriesItemView extends StatelessWidget {
  const CountriesItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CountriesVO>?>(
        future: _covidModel.getCountries(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapShot.hasError) {
            return const Center(
              child: Text("Error Fetching"),
            );
          }
          final listCountries = snapShot.data;
          return CountriesView(countries: listCountries);
        });
  }
}

class CountriesView extends StatelessWidget {
  const CountriesView({Key? key, required this.countries}) : super(key: key);
  final List<CountriesVO>? countries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: countries?.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.label_important),
              title: Text(countries?[index].country ?? ''),
              subtitle: Text(countries?[index].slug ?? ''),
            ),
          );
        });
  }
}
