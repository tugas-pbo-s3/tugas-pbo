part of '_index.dart';

enum Flavor { qa, dev, stage, prod }

final config = RM.injectFlavor(
  {
    Flavor.qa: () => ConfigTest(),
    Flavor.dev: () => ConfigDev(),
    Flavor.stage: () => ConfigStage(),
    Flavor.prod: () => ConfigProd(),
  },
);
