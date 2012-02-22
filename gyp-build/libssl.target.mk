# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libssl
DEFS_Default := 

# Flags passed to both C and C++ files.
CFLAGS_Default := 

# Flags passed to only C (and not C++) files.
CFLAGS_C_Default := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Default := 

INCS_Default := 

OBJS := $(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/bio_ssl.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_both.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_clnt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_enc.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_meth.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_pkt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/d1_srvr.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/kssl.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s23_clnt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s23_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s23_meth.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s23_pkt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s23_srvr.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_clnt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_enc.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_meth.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_pkt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s2_srvr.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_both.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_clnt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_enc.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_meth.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_pkt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/s3_srvr.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_algs.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_asn1.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_cert.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_ciph.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_err.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_err2.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_rsa.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_sess.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_stat.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/ssl_txt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_clnt.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_enc.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_lib.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_meth.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_reneg.o \
	$(obj).target/$(TARGET)/../3rdparty/openssl-1.0.0d/ssl/t1_srvr.o

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

$(obj).target/libssl.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libssl.a: LIBS := $(LIBS)
$(obj).target/libssl.a: TOOLSET := $(TOOLSET)
$(obj).target/libssl.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/libssl.a
# Add target alias
.PHONY: libssl
libssl: $(obj).target/libssl.a

# Add target alias to "all" target.
.PHONY: all
all: libssl

