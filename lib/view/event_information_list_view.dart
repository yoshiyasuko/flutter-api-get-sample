import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_api_get_sample/view/event_information_list_tile.dart';
import 'package:flutter_api_get_sample/view_model/event_information_list_view_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class EventInformationListView extends StatelessWidget {
  final viewModel = EventInformationListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Get Sample"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<EventInformationListViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              EasyLoading.show(status: 'Loading...');
            } else {
              EasyLoading.dismiss();
            }
            return _buildListView(viewModel);
          },
        ),
      ),
    );
  }

  Widget _buildListView(EventInformationListViewModel viewModel) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final event = viewModel.events[index];
          return EventInformationListTile(
              day: event.day,
              hour: event.hour,
              content: event.content,
              version: event.version);
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: viewModel.events.length);
  }
}
