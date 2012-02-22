# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := zipfs
DEFS_Default := 

# Flags passed to both C and C++ files.
CFLAGS_Default := 

# Flags passed to only C (and not C++) files.
CFLAGS_C_Default := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Default := 

INCS_Default := 

OBJS := $(obj).target/$(TARGET)/../src/zipfs/ZIPFSString.o \
	$(obj).target/$(TARGET)/../src/zipfs/ZIPFSVirtualPath.o \
	$(obj).target/$(TARGET)/../src/zipfs/ZIPFSZipFile.o \
	$(obj).target/$(TARGET)/../src/zipfs/zipfs-pch.o \
	$(obj).target/$(TARGET)/../src/zipfs/zipfs.o \
	$(obj).target/$(TARGET)/../src/zipfs/zipfs_util.o \
	$(obj).target/$(TARGET)/../src/zipfs/zipfs_vfscanf.o

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

$(obj).target/libzipfs.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libzipfs.a: LIBS := $(LIBS)
$(obj).target/libzipfs.a: TOOLSET := $(TOOLSET)
$(obj).target/libzipfs.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/libzipfs.a
# Add target alias
.PHONY: zipfs
zipfs: $(obj).target/libzipfs.a

# Add target alias to "all" target.
.PHONY: all
all: zipfs

