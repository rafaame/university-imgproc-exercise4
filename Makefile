##### Variables

ifeq ($(OS),Windows_NT)

	SRCDIR = src
	OBJDIR = obj
	INCDIR = -Isrc -Iinclude
	LIBDIR =
	CPPFLAGS = -g -Wall $(INCDIR)
	LFLAGS =
	CC = g++ -mwin32

else

	SRCDIR = src
	OBJDIR = obj
	INCDIR = -Isrc -Iinclude -I/usr/include/c++/4.7.2/
	LIBDIR =
	CPPFLAGS = -g -Wall $(INCDIR)
	LFLAGS =
	CC = g++

endif

##### Files

SOURCES = $(wildcard $(SRCDIR)/*.cpp)
SRCFILES = $(patsubst $(SRCDIR)/%,%,$(SOURCES))
DEPENDENCIES = $(patsubst %.cpp,%.o,$(SOURCES))
OBJTEMP = $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$(SOURCES))
OBJECTS = $(patsubst %.cpp,%.o,$(OBJTEMP))
TARGET = bin/main

##### Build rules
all: depend $(DEPENDENCIES)
	$(CC) $(CPPFLAGS) $(LIBDIR) $(OBJECTS) $(LFLAGS) -o $(TARGET)

.cpp.o:
	$(CC) $(CPPFLAGS) -c -o $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$*).o $*.cpp

depend:
	makedepend -fMakefile $(INCDIR) $(SOURCES)

clean:
	@rm -rf $(TARGET) $(TARGET).exe $(OBJDIR)/*.o *.bak *~ *%

memtest:
	valgrind --tool=memcheck --leak-check=full --show-reachable=yes ./$(TARGET)
# DO NOT DELETE

src/Image.o: include/Image.h include/common.h /usr/include/c++/4.7.2/cmath
src/Image.o: /usr/include/c++/4.7.2/bits/cpp_type_traits.h
src/Image.o: /usr/include/c++/4.7.2/ext/type_traits.h /usr/include/math.h
src/Image.o: /usr/include/features.h /usr/include/c++/4.7.2/iostream
src/Image.o: /usr/include/c++/4.7.2/ostream /usr/include/c++/4.7.2/ios
src/Image.o: /usr/include/c++/4.7.2/iosfwd
src/Image.o: /usr/include/c++/4.7.2/bits/stringfwd.h
src/Image.o: /usr/include/c++/4.7.2/bits/postypes.h
src/Image.o: /usr/include/c++/4.7.2/cwchar /usr/include/c++/4.7.2/exception
src/Image.o: /usr/include/c++/4.7.2/bits/atomic_lockfree_defines.h
src/Image.o: /usr/include/c++/4.7.2/bits/char_traits.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_algobase.h
src/Image.o: /usr/include/c++/4.7.2/bits/functexcept.h
src/Image.o: /usr/include/c++/4.7.2/bits/exception_defines.h
src/Image.o: /usr/include/c++/4.7.2/ext/numeric_traits.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_pair.h
src/Image.o: /usr/include/c++/4.7.2/bits/move.h
src/Image.o: /usr/include/c++/4.7.2/bits/concept_check.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_types.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_funcs.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_iterator.h
src/Image.o: /usr/include/c++/4.7.2/debug/debug.h
src/Image.o: /usr/include/c++/4.7.2/bits/localefwd.h
src/Image.o: /usr/include/c++/4.7.2/cctype /usr/include/ctype.h
src/Image.o: /usr/include/endian.h /usr/include/xlocale.h
src/Image.o: /usr/include/c++/4.7.2/bits/ios_base.h
src/Image.o: /usr/include/c++/4.7.2/ext/atomicity.h
src/Image.o: /usr/include/c++/4.7.2/bits/locale_classes.h
src/Image.o: /usr/include/c++/4.7.2/string
src/Image.o: /usr/include/c++/4.7.2/bits/allocator.h
src/Image.o: /usr/include/c++/4.7.2/bits/ostream_insert.h
src/Image.o: /usr/include/c++/4.7.2/bits/cxxabi_forced.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_function.h
src/Image.o: /usr/include/c++/4.7.2/backward/binders.h
src/Image.o: /usr/include/c++/4.7.2/bits/range_access.h
src/Image.o: /usr/include/c++/4.7.2/bits/basic_string.h
src/Image.o: /usr/include/c++/4.7.2/bits/basic_string.tcc
src/Image.o: /usr/include/c++/4.7.2/bits/locale_classes.tcc
src/Image.o: /usr/include/c++/4.7.2/streambuf
src/Image.o: /usr/include/c++/4.7.2/bits/streambuf.tcc
src/Image.o: /usr/include/c++/4.7.2/bits/basic_ios.h
src/Image.o: /usr/include/c++/4.7.2/bits/locale_facets.h
src/Image.o: /usr/include/c++/4.7.2/cwctype
src/Image.o: /usr/include/c++/4.7.2/bits/streambuf_iterator.h
src/Image.o: /usr/include/c++/4.7.2/bits/locale_facets.tcc
src/Image.o: /usr/include/c++/4.7.2/bits/basic_ios.tcc
src/Image.o: /usr/include/c++/4.7.2/bits/ostream.tcc
src/Image.o: /usr/include/c++/4.7.2/istream
src/Image.o: /usr/include/c++/4.7.2/bits/istream.tcc
src/Image.o: /usr/include/c++/4.7.2/sstream
src/Image.o: /usr/include/c++/4.7.2/bits/sstream.tcc
src/Image.o: /usr/include/c++/4.7.2/fstream
src/Image.o: /usr/include/c++/4.7.2/bits/codecvt.h
src/Image.o: /usr/include/c++/4.7.2/cstdio /usr/include/stdio.h
src/Image.o: /usr/include/libio.h /usr/include/_G_config.h
src/Image.o: /usr/include/wchar.h /usr/include/c++/4.7.2/bits/fstream.tcc
src/Image.o: /usr/include/c++/4.7.2/queue /usr/include/c++/4.7.2/deque
src/Image.o: /usr/include/c++/4.7.2/bits/stl_construct.h
src/Image.o: /usr/include/c++/4.7.2/new
src/Image.o: /usr/include/c++/4.7.2/ext/alloc_traits.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_uninitialized.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_deque.h
src/Image.o: /usr/include/c++/4.7.2/bits/deque.tcc
src/Image.o: /usr/include/c++/4.7.2/vector
src/Image.o: /usr/include/c++/4.7.2/bits/stl_vector.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_bvector.h
src/Image.o: /usr/include/c++/4.7.2/bits/vector.tcc
src/Image.o: /usr/include/c++/4.7.2/bits/stl_heap.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_queue.h
src/Image.o: /usr/include/c++/4.7.2/map
src/Image.o: /usr/include/c++/4.7.2/bits/stl_tree.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_map.h
src/Image.o: /usr/include/c++/4.7.2/bits/stl_multimap.h
src/main.o: include/common.h /usr/include/c++/4.7.2/cmath
src/main.o: /usr/include/c++/4.7.2/bits/cpp_type_traits.h
src/main.o: /usr/include/c++/4.7.2/ext/type_traits.h /usr/include/math.h
src/main.o: /usr/include/features.h /usr/include/c++/4.7.2/iostream
src/main.o: /usr/include/c++/4.7.2/ostream /usr/include/c++/4.7.2/ios
src/main.o: /usr/include/c++/4.7.2/iosfwd
src/main.o: /usr/include/c++/4.7.2/bits/stringfwd.h
src/main.o: /usr/include/c++/4.7.2/bits/postypes.h
src/main.o: /usr/include/c++/4.7.2/cwchar /usr/include/c++/4.7.2/exception
src/main.o: /usr/include/c++/4.7.2/bits/atomic_lockfree_defines.h
src/main.o: /usr/include/c++/4.7.2/bits/char_traits.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_algobase.h
src/main.o: /usr/include/c++/4.7.2/bits/functexcept.h
src/main.o: /usr/include/c++/4.7.2/bits/exception_defines.h
src/main.o: /usr/include/c++/4.7.2/ext/numeric_traits.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_pair.h
src/main.o: /usr/include/c++/4.7.2/bits/move.h
src/main.o: /usr/include/c++/4.7.2/bits/concept_check.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_types.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_funcs.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_iterator.h
src/main.o: /usr/include/c++/4.7.2/debug/debug.h
src/main.o: /usr/include/c++/4.7.2/bits/localefwd.h
src/main.o: /usr/include/c++/4.7.2/cctype /usr/include/ctype.h
src/main.o: /usr/include/endian.h /usr/include/xlocale.h
src/main.o: /usr/include/c++/4.7.2/bits/ios_base.h
src/main.o: /usr/include/c++/4.7.2/ext/atomicity.h
src/main.o: /usr/include/c++/4.7.2/bits/locale_classes.h
src/main.o: /usr/include/c++/4.7.2/string
src/main.o: /usr/include/c++/4.7.2/bits/allocator.h
src/main.o: /usr/include/c++/4.7.2/bits/ostream_insert.h
src/main.o: /usr/include/c++/4.7.2/bits/cxxabi_forced.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_function.h
src/main.o: /usr/include/c++/4.7.2/backward/binders.h
src/main.o: /usr/include/c++/4.7.2/bits/range_access.h
src/main.o: /usr/include/c++/4.7.2/bits/basic_string.h
src/main.o: /usr/include/c++/4.7.2/bits/basic_string.tcc
src/main.o: /usr/include/c++/4.7.2/bits/locale_classes.tcc
src/main.o: /usr/include/c++/4.7.2/streambuf
src/main.o: /usr/include/c++/4.7.2/bits/streambuf.tcc
src/main.o: /usr/include/c++/4.7.2/bits/basic_ios.h
src/main.o: /usr/include/c++/4.7.2/bits/locale_facets.h
src/main.o: /usr/include/c++/4.7.2/cwctype
src/main.o: /usr/include/c++/4.7.2/bits/streambuf_iterator.h
src/main.o: /usr/include/c++/4.7.2/bits/locale_facets.tcc
src/main.o: /usr/include/c++/4.7.2/bits/basic_ios.tcc
src/main.o: /usr/include/c++/4.7.2/bits/ostream.tcc
src/main.o: /usr/include/c++/4.7.2/istream
src/main.o: /usr/include/c++/4.7.2/bits/istream.tcc
src/main.o: /usr/include/c++/4.7.2/sstream
src/main.o: /usr/include/c++/4.7.2/bits/sstream.tcc
src/main.o: /usr/include/c++/4.7.2/fstream
src/main.o: /usr/include/c++/4.7.2/bits/codecvt.h
src/main.o: /usr/include/c++/4.7.2/cstdio /usr/include/stdio.h
src/main.o: /usr/include/libio.h /usr/include/_G_config.h
src/main.o: /usr/include/wchar.h /usr/include/c++/4.7.2/bits/fstream.tcc
src/main.o: /usr/include/c++/4.7.2/queue /usr/include/c++/4.7.2/deque
src/main.o: /usr/include/c++/4.7.2/bits/stl_construct.h
src/main.o: /usr/include/c++/4.7.2/new
src/main.o: /usr/include/c++/4.7.2/ext/alloc_traits.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_uninitialized.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_deque.h
src/main.o: /usr/include/c++/4.7.2/bits/deque.tcc
src/main.o: /usr/include/c++/4.7.2/vector
src/main.o: /usr/include/c++/4.7.2/bits/stl_vector.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_bvector.h
src/main.o: /usr/include/c++/4.7.2/bits/vector.tcc
src/main.o: /usr/include/c++/4.7.2/bits/stl_heap.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_queue.h
src/main.o: /usr/include/c++/4.7.2/map /usr/include/c++/4.7.2/bits/stl_tree.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_map.h
src/main.o: /usr/include/c++/4.7.2/bits/stl_multimap.h include/Pixel.h
src/main.o: include/Image.h include/Operation.h
src/Operation.o: include/Operation.h include/common.h
src/Operation.o: /usr/include/c++/4.7.2/cmath
src/Operation.o: /usr/include/c++/4.7.2/bits/cpp_type_traits.h
src/Operation.o: /usr/include/c++/4.7.2/ext/type_traits.h /usr/include/math.h
src/Operation.o: /usr/include/features.h /usr/include/c++/4.7.2/iostream
src/Operation.o: /usr/include/c++/4.7.2/ostream /usr/include/c++/4.7.2/ios
src/Operation.o: /usr/include/c++/4.7.2/iosfwd
src/Operation.o: /usr/include/c++/4.7.2/bits/stringfwd.h
src/Operation.o: /usr/include/c++/4.7.2/bits/postypes.h
src/Operation.o: /usr/include/c++/4.7.2/cwchar
src/Operation.o: /usr/include/c++/4.7.2/exception
src/Operation.o: /usr/include/c++/4.7.2/bits/atomic_lockfree_defines.h
src/Operation.o: /usr/include/c++/4.7.2/bits/char_traits.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_algobase.h
src/Operation.o: /usr/include/c++/4.7.2/bits/functexcept.h
src/Operation.o: /usr/include/c++/4.7.2/bits/exception_defines.h
src/Operation.o: /usr/include/c++/4.7.2/ext/numeric_traits.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_pair.h
src/Operation.o: /usr/include/c++/4.7.2/bits/move.h
src/Operation.o: /usr/include/c++/4.7.2/bits/concept_check.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_types.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_funcs.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_iterator.h
src/Operation.o: /usr/include/c++/4.7.2/debug/debug.h
src/Operation.o: /usr/include/c++/4.7.2/bits/localefwd.h
src/Operation.o: /usr/include/c++/4.7.2/cctype /usr/include/ctype.h
src/Operation.o: /usr/include/endian.h /usr/include/xlocale.h
src/Operation.o: /usr/include/c++/4.7.2/bits/ios_base.h
src/Operation.o: /usr/include/c++/4.7.2/ext/atomicity.h
src/Operation.o: /usr/include/c++/4.7.2/bits/locale_classes.h
src/Operation.o: /usr/include/c++/4.7.2/string
src/Operation.o: /usr/include/c++/4.7.2/bits/allocator.h
src/Operation.o: /usr/include/c++/4.7.2/bits/ostream_insert.h
src/Operation.o: /usr/include/c++/4.7.2/bits/cxxabi_forced.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_function.h
src/Operation.o: /usr/include/c++/4.7.2/backward/binders.h
src/Operation.o: /usr/include/c++/4.7.2/bits/range_access.h
src/Operation.o: /usr/include/c++/4.7.2/bits/basic_string.h
src/Operation.o: /usr/include/c++/4.7.2/bits/basic_string.tcc
src/Operation.o: /usr/include/c++/4.7.2/bits/locale_classes.tcc
src/Operation.o: /usr/include/c++/4.7.2/streambuf
src/Operation.o: /usr/include/c++/4.7.2/bits/streambuf.tcc
src/Operation.o: /usr/include/c++/4.7.2/bits/basic_ios.h
src/Operation.o: /usr/include/c++/4.7.2/bits/locale_facets.h
src/Operation.o: /usr/include/c++/4.7.2/cwctype
src/Operation.o: /usr/include/c++/4.7.2/bits/streambuf_iterator.h
src/Operation.o: /usr/include/c++/4.7.2/bits/locale_facets.tcc
src/Operation.o: /usr/include/c++/4.7.2/bits/basic_ios.tcc
src/Operation.o: /usr/include/c++/4.7.2/bits/ostream.tcc
src/Operation.o: /usr/include/c++/4.7.2/istream
src/Operation.o: /usr/include/c++/4.7.2/bits/istream.tcc
src/Operation.o: /usr/include/c++/4.7.2/sstream
src/Operation.o: /usr/include/c++/4.7.2/bits/sstream.tcc
src/Operation.o: /usr/include/c++/4.7.2/fstream
src/Operation.o: /usr/include/c++/4.7.2/bits/codecvt.h
src/Operation.o: /usr/include/c++/4.7.2/cstdio /usr/include/stdio.h
src/Operation.o: /usr/include/libio.h /usr/include/_G_config.h
src/Operation.o: /usr/include/wchar.h /usr/include/c++/4.7.2/bits/fstream.tcc
src/Operation.o: /usr/include/c++/4.7.2/queue /usr/include/c++/4.7.2/deque
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_construct.h
src/Operation.o: /usr/include/c++/4.7.2/new
src/Operation.o: /usr/include/c++/4.7.2/ext/alloc_traits.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_uninitialized.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_deque.h
src/Operation.o: /usr/include/c++/4.7.2/bits/deque.tcc
src/Operation.o: /usr/include/c++/4.7.2/vector
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_vector.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_bvector.h
src/Operation.o: /usr/include/c++/4.7.2/bits/vector.tcc
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_heap.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_queue.h
src/Operation.o: /usr/include/c++/4.7.2/map
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_tree.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_map.h
src/Operation.o: /usr/include/c++/4.7.2/bits/stl_multimap.h include/Pixel.h
src/Operation.o: include/Image.h
src/Pixel.o: include/Pixel.h include/common.h /usr/include/c++/4.7.2/cmath
src/Pixel.o: /usr/include/c++/4.7.2/bits/cpp_type_traits.h
src/Pixel.o: /usr/include/c++/4.7.2/ext/type_traits.h /usr/include/math.h
src/Pixel.o: /usr/include/features.h /usr/include/c++/4.7.2/iostream
src/Pixel.o: /usr/include/c++/4.7.2/ostream /usr/include/c++/4.7.2/ios
src/Pixel.o: /usr/include/c++/4.7.2/iosfwd
src/Pixel.o: /usr/include/c++/4.7.2/bits/stringfwd.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/postypes.h
src/Pixel.o: /usr/include/c++/4.7.2/cwchar /usr/include/c++/4.7.2/exception
src/Pixel.o: /usr/include/c++/4.7.2/bits/atomic_lockfree_defines.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/char_traits.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_algobase.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/functexcept.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/exception_defines.h
src/Pixel.o: /usr/include/c++/4.7.2/ext/numeric_traits.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_pair.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/move.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/concept_check.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_types.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_iterator_base_funcs.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_iterator.h
src/Pixel.o: /usr/include/c++/4.7.2/debug/debug.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/localefwd.h
src/Pixel.o: /usr/include/c++/4.7.2/cctype /usr/include/ctype.h
src/Pixel.o: /usr/include/endian.h /usr/include/xlocale.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/ios_base.h
src/Pixel.o: /usr/include/c++/4.7.2/ext/atomicity.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/locale_classes.h
src/Pixel.o: /usr/include/c++/4.7.2/string
src/Pixel.o: /usr/include/c++/4.7.2/bits/allocator.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/ostream_insert.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/cxxabi_forced.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_function.h
src/Pixel.o: /usr/include/c++/4.7.2/backward/binders.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/range_access.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/basic_string.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/basic_string.tcc
src/Pixel.o: /usr/include/c++/4.7.2/bits/locale_classes.tcc
src/Pixel.o: /usr/include/c++/4.7.2/streambuf
src/Pixel.o: /usr/include/c++/4.7.2/bits/streambuf.tcc
src/Pixel.o: /usr/include/c++/4.7.2/bits/basic_ios.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/locale_facets.h
src/Pixel.o: /usr/include/c++/4.7.2/cwctype
src/Pixel.o: /usr/include/c++/4.7.2/bits/streambuf_iterator.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/locale_facets.tcc
src/Pixel.o: /usr/include/c++/4.7.2/bits/basic_ios.tcc
src/Pixel.o: /usr/include/c++/4.7.2/bits/ostream.tcc
src/Pixel.o: /usr/include/c++/4.7.2/istream
src/Pixel.o: /usr/include/c++/4.7.2/bits/istream.tcc
src/Pixel.o: /usr/include/c++/4.7.2/sstream
src/Pixel.o: /usr/include/c++/4.7.2/bits/sstream.tcc
src/Pixel.o: /usr/include/c++/4.7.2/fstream
src/Pixel.o: /usr/include/c++/4.7.2/bits/codecvt.h
src/Pixel.o: /usr/include/c++/4.7.2/cstdio /usr/include/stdio.h
src/Pixel.o: /usr/include/libio.h /usr/include/_G_config.h
src/Pixel.o: /usr/include/wchar.h /usr/include/c++/4.7.2/bits/fstream.tcc
src/Pixel.o: /usr/include/c++/4.7.2/queue /usr/include/c++/4.7.2/deque
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_construct.h
src/Pixel.o: /usr/include/c++/4.7.2/new
src/Pixel.o: /usr/include/c++/4.7.2/ext/alloc_traits.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_uninitialized.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_deque.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/deque.tcc
src/Pixel.o: /usr/include/c++/4.7.2/vector
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_vector.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_bvector.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/vector.tcc
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_heap.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_queue.h
src/Pixel.o: /usr/include/c++/4.7.2/map
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_tree.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_map.h
src/Pixel.o: /usr/include/c++/4.7.2/bits/stl_multimap.h
