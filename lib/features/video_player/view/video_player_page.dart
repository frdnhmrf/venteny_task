import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venteny_test/core/bloc_status.dart';

import '../../../core/resources/styles.dart';
import '../../../core/widgets/shimmer.dart';
import '../../../domain/video_player/entity/media.dart';
import '../cubit/media_cubit.dart';
import 'cubit/video_control_cubit.dart';
import 'widget/video_player_widget.dart';

class VideoPlayerPage extends StatelessWidget {
  const VideoPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    Media? media = context.watch<VideoControlCubit>().state.media;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              BlocBuilder<VideoControlCubit, VideoControlState>(
                builder: (context, state) {
                  if (state.status == BlocStatus.Initial) {
                    return const SizedBox();
                  } else if (state.status == BlocStatus.Loading) {
                    return const SizedBox();
                  } else if (state.status == BlocStatus.Loaded) {
                    return Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: VideoPlayerWidget(
                              key: ValueKey(media?.previewUrl),
                              path: media?.previewUrl ?? '',
                            ),
                          ),
                          Positioned(
                            top: 2,
                            left: 2,
                            child: IconButton(
                                onPressed: () => context
                                    .read<VideoControlCubit>()
                                    .exitPlay(),
                                icon: const Icon(Icons.highlight_remove)),
                          )
                        ],
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
              Expanded(
                flex: 5,
                child: BlocBuilder<MediaCubit, MediaState>(
                  builder: (context, stateMedia) {
                    if (stateMedia.status == BlocStatus.Initial ||
                        stateMedia.status == BlocStatus.Loading) {
                      return const ShimmerList();
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.all(5),
                      itemCount: stateMedia.data.length,
                      itemBuilder: (context, index) {
                        var data = stateMedia.data[index];
                        return Card(
                          surfaceTintColor:
                              media != null && media.trackId == data.trackId
                                  ? Colors.orange
                                  : Colors.grey,
                          child: ListTile(
                            onTap: () {
                              context
                                  .read<VideoControlCubit>()
                                  .playMedia(media: data);
                            },
                            leading: Image.network(
                              data.artworkUrl60 ?? '',
                              width: 60,
                              height: 60,
                            ),
                            title: Text(
                              data.trackName ?? '-',
                              style: TextStyles.bodyLg(context),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              data.shortDescription ??
                                  data.longDescription ??
                                  '',
                              maxLines: 2,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.bodySm(context),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
