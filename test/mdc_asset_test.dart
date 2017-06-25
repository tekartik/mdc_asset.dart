// Copyright (c) 2017, alex. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@TestOn("browser")
import 'package:test/test.dart';
import 'package:tekartik_browser_utils/browser_utils_import.dart';

Future _loadMdcJs() async {
  await loadJavascriptScript(
      "packages/tekartik_mdc_asset/material-components-web.min.js");
}

Future _loadMdcCss() async {
  await loadStylesheet(
      "packages/tekartik_mdc_asset/material-components-web.min.css");
}

Future loadMdcCssJs() async {
  await waitAll([
    () async {
      await _loadMdcCss();
    },
    () async {
      await _loadMdcJs();
    }
  ]);
}

void main() {
  group('load', () {
    test('load_js_css', () async {
      await loadMdcCssJs();
    });
  });
}
