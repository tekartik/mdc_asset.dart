import 'dart:io';
import 'package:fs_shim/utils/io/copy.dart';
import 'package:path/path.dart';
import 'package:tekartik_build_utils/cmd_run.dart';

main() async {
  await runCmd(
      processCmd("npm", ["install", "--save material-components-web"]));
  await copyDirectory(
      new Directory(join("node_modules", "material-components-web", "dist")),
      new Directory("lib"));
  await copyFile(
      new File(join("node_modules", "material-components-web", "package.json")),
      new File(join("lib", "package.json")));
//  new File()
}
