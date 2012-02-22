# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := glewinfo
DEFS_Default := 

# Flags passed to both C and C++ files.
CFLAGS_Default := 

# Flags passed to only C (and not C++) files.
CFLAGS_C_Default := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Default := 

INCS_Default := 

OBJS := $(obj).target/$(TARGET)/../3rdparty/glew-1.5.6/src/glewinfo.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libglew.a $(obj).target/libzipfs.a $(obj).target/libzlib.a $(obj).target/libtlsf.a

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

$(builddir)/glewinfo: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/glewinfo: LIBS := $(LIBS)
$(builddir)/glewinfo: TOOLSET := $(TOOLSET)
$(builddir)/glewinfo: $(OBJS) $(obj).target/libglew.a $(obj).target/libzipfs.a $(obj).target/libzlib.a $(obj).target/libtlsf.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/glewinfo
# Add target alias
.PHONY: glewinfo
glewinfo: $(builddir)/glewinfo

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/glewinfo

