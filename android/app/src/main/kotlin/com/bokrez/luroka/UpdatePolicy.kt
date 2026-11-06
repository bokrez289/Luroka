package com.bokrez.luroka

internal object UpdatePolicy {
  fun requireCompatible(
    installedPackage: String, archivePackage: String?, currentCode: Long,
    archiveCode: Long, expectedCode: Long?, installedSigners: Set<String>, archiveSigners: Set<String>
  ) {
    require(installedPackage == archivePackage) { "Update is for a different app" }
    require(archiveCode > currentCode && archiveCode == expectedCode) { "Update version mismatch" }
    require(installedSigners.isNotEmpty() && installedSigners == archiveSigners) { "Update signing certificate does not match" }
  }
}
