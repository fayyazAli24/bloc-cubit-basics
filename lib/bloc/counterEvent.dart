part of 'counterBlock.dart';

sealed class EventClass {}

class CounterIncremented extends EventClass {}

class CounterDecremented extends EventClass {}