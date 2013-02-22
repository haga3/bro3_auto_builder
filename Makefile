.SUFFIXES: .js
VPATH = src
BUILD_DIR=build
COFFEES = $(BUILD_DIR)/soldier.js
OBJS = src/header.js $(COFFEES) src/legacy.js
TARGET = $(BUILD_DIR)/bro3_auto_builder.user.js

auto: $(TARGET)

$(BUILD_DIR)/%.js: %.coffee
	coffee -b -o $(BUILD_DIR) -c $<

$(TARGET): $(OBJS)
	cat $(OBJS) > $(TARGET)

clean:
	rm -r $(BUILD_DIR)
