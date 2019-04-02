# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lillypkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilillypkg:/home/lilly/Desktop/ROSws/src/lillypkg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lillypkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_custom_target(_lillypkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lillypkg" "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lillypkg
  "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lillypkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(lillypkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lillypkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lillypkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lillypkg_generate_messages lillypkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_dependencies(lillypkg_generate_messages_cpp _lillypkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lillypkg_gencpp)
add_dependencies(lillypkg_gencpp lillypkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lillypkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lillypkg
  "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lillypkg
)

### Generating Services

### Generating Module File
_generate_module_eus(lillypkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lillypkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lillypkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lillypkg_generate_messages lillypkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_dependencies(lillypkg_generate_messages_eus _lillypkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lillypkg_geneus)
add_dependencies(lillypkg_geneus lillypkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lillypkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lillypkg
  "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lillypkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(lillypkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lillypkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lillypkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lillypkg_generate_messages lillypkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_dependencies(lillypkg_generate_messages_lisp _lillypkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lillypkg_genlisp)
add_dependencies(lillypkg_genlisp lillypkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lillypkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lillypkg
  "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lillypkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lillypkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lillypkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lillypkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lillypkg_generate_messages lillypkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_dependencies(lillypkg_generate_messages_nodejs _lillypkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lillypkg_gennodejs)
add_dependencies(lillypkg_gennodejs lillypkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lillypkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lillypkg
  "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lillypkg
)

### Generating Services

### Generating Module File
_generate_module_py(lillypkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lillypkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lillypkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lillypkg_generate_messages lillypkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lilly/Desktop/ROSws/src/lillypkg/msg/Person.msg" NAME_WE)
add_dependencies(lillypkg_generate_messages_py _lillypkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lillypkg_genpy)
add_dependencies(lillypkg_genpy lillypkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lillypkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lillypkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lillypkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lillypkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lillypkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lillypkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lillypkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lillypkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lillypkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lillypkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lillypkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lillypkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lillypkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lillypkg)
  install(CODE "execute_process(COMMAND \"/home/lilly/anaconda3/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lillypkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lillypkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lillypkg_generate_messages_py std_msgs_generate_messages_py)
endif()
