# Copyright 2016-present Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Description:
# Tools for building a Catalog by Convention.

load("@bazel_skylib//rules:build_test.bzl", "build_test")
load("@bazel_ios_warnings//:strict_warnings_objc_library.bzl", "strict_warnings_objc_library")
load("@bazel_apple_framework_relative_headers//:apple_framework_relative_headers.bzl", "apple_framework_relative_headers")

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE"])

strict_warnings_objc_library(
    name = "CatalogByConvention",
    srcs = glob([
        "src/*.m",
        "src/private/*.m",
    ]),
    hdrs = glob([
        "src/*.h",
        "src/private/*.h",
    ]),
    enable_modules = 1,
    module_name = "CatalogByConvention",
    visibility = ["//visibility:public"],
    deps = [
        ":CatalogByConventionFrameworkHeaders",
    ],
)

apple_framework_relative_headers(
    name = "CatalogByConventionFrameworkHeaders",
    hdrs = glob([
        "src/*.h",
    ]),
    framework_name = "CatalogByConvention",
)

build_test(
    name = "BuildTest",
    targets = [
        ":CatalogByConvention"
    ],
)
