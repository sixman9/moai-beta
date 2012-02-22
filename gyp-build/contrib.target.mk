# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := contrib
DEFS_Default := 

# Flags passed to both C and C++ files.
CFLAGS_Default := 

# Flags passed to only C (and not C++) files.
CFLAGS_C_Default := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Default := 

INCS_Default := 

OBJS := $(obj).target/$(TARGET)/../3rdparty/contrib/utf8.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Default := 

LIBS := 

$(obj).target/libcontrib.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libcontrib.a: LIBS := $(LIBS)
$(obj).target/libcontrib.a: TOOLSET := $(TOOLSET)
$(obj).target/libcontrib.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/libcontrib.a
# Add target alias
.PHONY: contrib
contrib: $(obj).target/libcontrib.a

# Add target alias to "all" target.
.PHONY: all
all: contrib

