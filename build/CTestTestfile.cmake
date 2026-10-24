# CMake generated Testfile for 
# Source directory: C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine
# Build directory: C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test("mtie_tests" "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/Debug/mtie_tests.exe")
  set_tests_properties("mtie_tests" PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/Debug/mtie_tests.exe" _BACKTRACE_TRIPLES "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;23;add_test;C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test("mtie_tests" "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/Release/mtie_tests.exe")
  set_tests_properties("mtie_tests" PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/Release/mtie_tests.exe" _BACKTRACE_TRIPLES "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;23;add_test;C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test("mtie_tests" "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/MinSizeRel/mtie_tests.exe")
  set_tests_properties("mtie_tests" PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/MinSizeRel/mtie_tests.exe" _BACKTRACE_TRIPLES "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;23;add_test;C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test("mtie_tests" "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/RelWithDebInfo/mtie_tests.exe")
  set_tests_properties("mtie_tests" PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/build/RelWithDebInfo/mtie_tests.exe" _BACKTRACE_TRIPLES "C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;23;add_test;C:/Users/Manqoba/Downloads/PROJECTS/mini_transformer_inference_engine/mini_transformer_inference_engine/CMakeLists.txt;0;")
else()
  add_test("mtie_tests" NOT_AVAILABLE)
endif()
