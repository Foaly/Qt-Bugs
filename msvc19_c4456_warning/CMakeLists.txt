cmake_minimum_required(VERSION 3.16)

project(Tester
    VERSION 0.1
    LANGUAGES CXX
)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

set(SOURCE_FILES
    main.cpp
)

qt_add_executable(${PROJECT_NAME} ${SOURCE_FILES})

set(QML_FILES
    main.qml
)

qt_add_qml_module(${PROJECT_NAME}
    URI ${PROJECT_NAME}
    VERSION 1.0
    QML_FILES "${QML_FILES}"
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        Qt6::Quick
)

install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})


# set warning level
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang|AppleClang|GNU")
    target_compile_options(${PROJECT_NAME} PRIVATE -Wall)
elseif(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE /W4)
endif()

# treat warnings as errors
if(CMAKE_GENERATOR MATCHES "XCode")
    set_target_properties(${PROJECT_NAME} PROPERTIES XCODE_ATTRIBUTE_GCC_TREAT_WARNINGS_AS_ERRORS "YES")
elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang|AppleClang|GNU")
    target_compile_options(${PROJECT_NAME} PRIVATE -Werror)
elseif(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE /WX)
endif()
