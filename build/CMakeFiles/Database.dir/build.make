# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tomasz/C++/StudentsDatabase_Luki

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tomasz/C++/StudentsDatabase_Luki/build

# Include any dependencies generated for this target.
include CMakeFiles/Database.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Database.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Database.dir/flags.make

CMakeFiles/Database.dir/Database.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/Database.cpp.o: ../Database.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Database.dir/Database.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/Database.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/Database.cpp

CMakeFiles/Database.dir/Database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/Database.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/Database.cpp > CMakeFiles/Database.dir/Database.cpp.i

CMakeFiles/Database.dir/Database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/Database.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/Database.cpp -o CMakeFiles/Database.dir/Database.cpp.s

CMakeFiles/Database.dir/Database.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/Database.cpp.o.requires

CMakeFiles/Database.dir/Database.cpp.o.provides: CMakeFiles/Database.dir/Database.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/Database.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/Database.cpp.o.provides

CMakeFiles/Database.dir/Database.cpp.o.provides.build: CMakeFiles/Database.dir/Database.cpp.o


CMakeFiles/Database.dir/Person.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/Person.cpp.o: ../Person.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Database.dir/Person.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/Person.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/Person.cpp

CMakeFiles/Database.dir/Person.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/Person.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/Person.cpp > CMakeFiles/Database.dir/Person.cpp.i

CMakeFiles/Database.dir/Person.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/Person.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/Person.cpp -o CMakeFiles/Database.dir/Person.cpp.s

CMakeFiles/Database.dir/Person.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/Person.cpp.o.requires

CMakeFiles/Database.dir/Person.cpp.o.provides: CMakeFiles/Database.dir/Person.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/Person.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/Person.cpp.o.provides

CMakeFiles/Database.dir/Person.cpp.o.provides.build: CMakeFiles/Database.dir/Person.cpp.o


CMakeFiles/Database.dir/Employee.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/Employee.cpp.o: ../Employee.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Database.dir/Employee.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/Employee.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/Employee.cpp

CMakeFiles/Database.dir/Employee.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/Employee.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/Employee.cpp > CMakeFiles/Database.dir/Employee.cpp.i

CMakeFiles/Database.dir/Employee.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/Employee.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/Employee.cpp -o CMakeFiles/Database.dir/Employee.cpp.s

CMakeFiles/Database.dir/Employee.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/Employee.cpp.o.requires

CMakeFiles/Database.dir/Employee.cpp.o.provides: CMakeFiles/Database.dir/Employee.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/Employee.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/Employee.cpp.o.provides

CMakeFiles/Database.dir/Employee.cpp.o.provides.build: CMakeFiles/Database.dir/Employee.cpp.o


CMakeFiles/Database.dir/Student.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/Student.cpp.o: ../Student.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Database.dir/Student.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/Student.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/Student.cpp

CMakeFiles/Database.dir/Student.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/Student.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/Student.cpp > CMakeFiles/Database.dir/Student.cpp.i

CMakeFiles/Database.dir/Student.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/Student.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/Student.cpp -o CMakeFiles/Database.dir/Student.cpp.s

CMakeFiles/Database.dir/Student.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/Student.cpp.o.requires

CMakeFiles/Database.dir/Student.cpp.o.provides: CMakeFiles/Database.dir/Student.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/Student.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/Student.cpp.o.provides

CMakeFiles/Database.dir/Student.cpp.o.provides.build: CMakeFiles/Database.dir/Student.cpp.o


CMakeFiles/Database.dir/PeselValidation.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/PeselValidation.cpp.o: ../PeselValidation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Database.dir/PeselValidation.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/PeselValidation.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/PeselValidation.cpp

CMakeFiles/Database.dir/PeselValidation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/PeselValidation.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/PeselValidation.cpp > CMakeFiles/Database.dir/PeselValidation.cpp.i

CMakeFiles/Database.dir/PeselValidation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/PeselValidation.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/PeselValidation.cpp -o CMakeFiles/Database.dir/PeselValidation.cpp.s

CMakeFiles/Database.dir/PeselValidation.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/PeselValidation.cpp.o.requires

CMakeFiles/Database.dir/PeselValidation.cpp.o.provides: CMakeFiles/Database.dir/PeselValidation.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/PeselValidation.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/PeselValidation.cpp.o.provides

CMakeFiles/Database.dir/PeselValidation.cpp.o.provides.build: CMakeFiles/Database.dir/PeselValidation.cpp.o


CMakeFiles/Database.dir/main.cpp.o: CMakeFiles/Database.dir/flags.make
CMakeFiles/Database.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Database.dir/main.cpp.o"
	clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/main.cpp.o -c /home/tomasz/C++/StudentsDatabase_Luki/main.cpp

CMakeFiles/Database.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/main.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/C++/StudentsDatabase_Luki/main.cpp > CMakeFiles/Database.dir/main.cpp.i

CMakeFiles/Database.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/main.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/C++/StudentsDatabase_Luki/main.cpp -o CMakeFiles/Database.dir/main.cpp.s

CMakeFiles/Database.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Database.dir/main.cpp.o.requires

CMakeFiles/Database.dir/main.cpp.o.provides: CMakeFiles/Database.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Database.dir/build.make CMakeFiles/Database.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Database.dir/main.cpp.o.provides

CMakeFiles/Database.dir/main.cpp.o.provides.build: CMakeFiles/Database.dir/main.cpp.o


# Object files for target Database
Database_OBJECTS = \
"CMakeFiles/Database.dir/Database.cpp.o" \
"CMakeFiles/Database.dir/Person.cpp.o" \
"CMakeFiles/Database.dir/Employee.cpp.o" \
"CMakeFiles/Database.dir/Student.cpp.o" \
"CMakeFiles/Database.dir/PeselValidation.cpp.o" \
"CMakeFiles/Database.dir/main.cpp.o"

# External object files for target Database
Database_EXTERNAL_OBJECTS =

Database: CMakeFiles/Database.dir/Database.cpp.o
Database: CMakeFiles/Database.dir/Person.cpp.o
Database: CMakeFiles/Database.dir/Employee.cpp.o
Database: CMakeFiles/Database.dir/Student.cpp.o
Database: CMakeFiles/Database.dir/PeselValidation.cpp.o
Database: CMakeFiles/Database.dir/main.cpp.o
Database: CMakeFiles/Database.dir/build.make
Database: CMakeFiles/Database.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Database"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Database.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Database.dir/build: Database

.PHONY : CMakeFiles/Database.dir/build

CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/Database.cpp.o.requires
CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/Person.cpp.o.requires
CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/Employee.cpp.o.requires
CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/Student.cpp.o.requires
CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/PeselValidation.cpp.o.requires
CMakeFiles/Database.dir/requires: CMakeFiles/Database.dir/main.cpp.o.requires

.PHONY : CMakeFiles/Database.dir/requires

CMakeFiles/Database.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Database.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Database.dir/clean

CMakeFiles/Database.dir/depend:
	cd /home/tomasz/C++/StudentsDatabase_Luki/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tomasz/C++/StudentsDatabase_Luki /home/tomasz/C++/StudentsDatabase_Luki /home/tomasz/C++/StudentsDatabase_Luki/build /home/tomasz/C++/StudentsDatabase_Luki/build /home/tomasz/C++/StudentsDatabase_Luki/build/CMakeFiles/Database.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Database.dir/depend
