include(FetchContent)

FetchContent_Declare(
    nlohmann_json
    GIT_REPOSITORY  https://github.com/nlohmann/json.git
    GIT_TAG  v3.11.3
)

FetchContent_MakeAvailable(nlohmann_json)

message("---------------------------------start_curl---------------------------------")

FetchContent_Declare(
    zlib
    GIT_REPOSITORY  https://github.com/madler/zlib.git
    GIT_TAG v1.3.1
)
FetchContent_MakeAvailable(zlib)

set(ZLIB_INCLUDE_DIR ${CMAKE_BINARY_DIR}/_deps/zlib-src/)
set(ZLIB_LIBRARY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/lib/zlibd.lib)

file(REMOVE_RECURSE ${CMAKE_BINARY_DIR}/zconf.h)
file(COPY ${CMAKE_BINARY_DIR}/_deps/zlib-build/zconf.h DESTINATION ${ZLIB_INCLUDE_DIR})

FetchContent_Declare(
    libssh2
    GIT_REPOSITORY https://github.com/libssh2/libssh2.git
    GIT_TAG libssh2-1.11.1
)
FetchContent_MakeAvailable(libssh2)

set(LIBSSH2_INCLUDE_DIR ${CMAKE_BINARY_DIR}/_deps/libssh2-src/include/)
set(LIBSSH2_LIBRARY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/lib/libssh2.lib)


FetchContent_Declare(
    curl
    GIT_REPOSITORY  https://github.com/curl/curl.git
    GIT_TAG curl-8_11_0
    #CMAKE_ARGS -DCMAKE_USE_OPENSSL=OFF
)

FetchContent_MakeAvailable(curl)

message("----------------------------------end_curl----------------------------------")

FetchContent_Declare(
    SDL
    GIT_REPOSITORY  https://github.com/libsdl-org/SDL.git
    GIT_TAG release-2.30.9
)

FetchContent_MakeAvailable(SDL)

FetchContent_Declare(
    spdlog
    GIT_REPOSITORY  https://github.com/gabime/spdlog.git
    GIT_TAG v1.15.0
)

FetchContent_MakeAvailable(spdlog)

add_subdirectory(external_library)
