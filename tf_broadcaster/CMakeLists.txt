cmake_minimum_required(VERSION 2.8.3)
project(tf_boardcaster)


#SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
#将git当前版本信息编译到可执行文件中
exec_program(
    "git"
    ${CMAKE_CURRENT_SOURCE_DIR}
    ARGS "log --format='[sha1]:%h [author]:%cn [time]:%ci [commit]:%s [branch]:%d' -1"
    OUTPUT_VARIABLE VERSION_SHA1 )

string(REGEX REPLACE "\#"
           "$" VERSION_SHA1
           ${VERSION_SHA1})

add_definitions( -DGIT_SHA1="${VERSION_SHA1}" )

## C++11
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()


#FIND_PACKAGE(Boost)
#IF (Boost_FOUND)
#   INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})
#   #ADD_DEFINITIONS( "-DHAS_BOOST" )
#ENDIF()

# for print call trace by zhou
add_compile_options(-rdynamic)
add_compile_options(-g -lmcheck)
#add_compile_options(-fopenmp)
#add_compile_options(-fpermissive)
add_compile_options(-lstdc++)
add_compile_options(-fPIC)
#add_compile_options(-O0)
#add_compile_options(-save-temps)
#test link nanomsg
#add_compile_options(-lnanomsg)
#add_compile_options('--copy-dt-needed-entries')
SET(CMAKE_BUILD_TYPE "Debug")
#SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} /opt/ros/melodic/ /usr)


 # 打印出编译和链接阶段的耗时情况
# set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CMAKE_COMMAND} -E time")
# set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK "${CMAKE_COMMAND} -E time")
find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    tf
    )

include_directories(${catkin_INCLUDE_DIRS})

## SRC ##
AUX_SOURCE_DIRECTORY (src DIR_SRCS)

##########################
# applications
##########################
add_executable(tf_broadcaster src/map_to_odom.cpp)
target_link_libraries(tf_broadcaster
    ${catkin_LIBRARIES}
)
