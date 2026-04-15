CXX = g++

AS = nasm
ASFLAGS = -f elf64 -g -F dwarf

CXXFLAGS = -fno-omit-frame-pointer -O3 -Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline \
           -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum \
           -Wswitch-default -Weffc++ -Wmain -Wextra -Wall -g -pipe -fexceptions -Wcast-qual \
           -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security -Wformat=2 \
           -Wignored-qualifiers -Wlogical-op -Wno-missing-field-initializers -Wnon-virtual-dtor \
           -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 \
           -Wstrict-aliasing -Wstrict-null-sentinel -Wtype-limits -Wwrite-strings -Werror=vla \
           -DNDEBUG -D_EJUDGE_CLIENT_SIDE -msse4.2 -ggdb3

SRC_DIR = src
BUILD_DIR = build

TARGET = $(BUILD_DIR)/programFinalVersion

SRCS = $(wildcard $(SRC_DIR)/*.cpp)
ASRCS = $(wildcard $(SRC_DIR)/*.asm)


OBJS = $(SRCS:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)
AOBJS = $(ASRCS:$(SRC_DIR)/%.asm=$(BUILD_DIR)/%.o)

ALL_OBJS = $(OBJS) $(AOBJS)

all: $(TARGET)

$(TARGET): $(ALL_OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(ALL_OBJS)


$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@


$(BUILD_DIR)/%.o: $(SRC_DIR)/%.asm
	mkdir -p $(BUILD_DIR)
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR)
	rm -f cachegrind.out.*

.PHONY: all clean
