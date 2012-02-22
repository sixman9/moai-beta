# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := moaiext-luaext
DEFS_Default := 

# Flags passed to both C and C++ files.
CFLAGS_Default := 

# Flags passed to only C (and not C++) files.
CFLAGS_C_Default := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Default := 

INCS_Default := 

OBJS := $(obj).target/$(TARGET)/../src/aku/AKU-luaext.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Default := 

LIBS := 

$(obj).target/libmoaiext-luaext.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libmoaiext-luaext.a: LIBS := $(LIBS)
$(obj).target/libmoaiext-luaext.a: TOOLSET := $(TOOLSET)
$(obj).target/libmoaiext-luaext.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/libmoaiext-luaext.a
# Add target alias
.PHONY: moaiext-luaext
moaiext-luaext: $(obj).target/libmoaiext-luaext.a

# Add target alias to "all" target.
.PHONY: all
all: moaiext-luaext

