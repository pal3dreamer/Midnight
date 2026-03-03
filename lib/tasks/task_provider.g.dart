// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TaskProvider)
final taskProviderProvider = TaskProviderProvider._();

final class TaskProviderProvider
    extends $NotifierProvider<TaskProvider, List<Task>> {
  TaskProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskProviderHash();

  @$internal
  @override
  TaskProvider create() => TaskProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Task> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Task>>(value),
    );
  }
}

String _$taskProviderHash() => r'67e092dae714489de12511971958a20f590c678c';

abstract class _$TaskProvider extends $Notifier<List<Task>> {
  List<Task> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<Task>, List<Task>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Task>, List<Task>>,
              List<Task>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
