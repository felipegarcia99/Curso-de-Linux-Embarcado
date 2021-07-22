cmake_minimum_required(VERSION 3.10)
project(aplicacao_final_mysql_BBB)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

include_directories(/home/felipe/Downloads/mysql-connector-c++-8.0.22-src/teste_ARM/include)
link_directories(/usr/lib/mysqlcppconn8_ARM)

set(PROJECT_LINK_LIBS libmysqlcppconn8.so)
add_executable(sensorDataMySQL main.cpp)
target_link_libraries(sensorDataMySQL ${PROJECT_LINK_LIBS})

SET(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
