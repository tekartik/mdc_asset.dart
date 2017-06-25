// Copyright (c) 2017, alex. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:io';
import 'package:path/path.dart';
import 'package:tekartik_common_utils/version_utils.dart';
@TestOn("vm")
import 'package:tekartik_pub/io.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('version', () {
    test('compare', () async {
      Version pubspecVersion = await extractPubspecYamlVersion('.');
      Map mdcNodePackageJson =
          loadYaml(await new File(join("lib", "package.json")).readAsString());
      Version mdcNodeVersion = new Version.parse(mdcNodePackageJson["version"]);
      expect(pubspecVersion, mdcNodeVersion);
    });
  });
}
