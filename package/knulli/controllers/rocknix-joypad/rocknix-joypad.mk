################################################################################
#
# rocknix-joypad - ROCKNIX Joypad Kernel Module
#
################################################################################
ROCKNIX_JOYPAD_VERSION = e205fe5489561d955dbf00a4e24e73410cdd30f2
ROCKNIX_JOYPAD_SITE = https://github.com/ROCKNIX/rocknix-joypad
ROCKNIX_JOYPAD_SOURCE = rocknix-joypad-$(ROCKNIX_JOYPAD_VERSION).tar.gz
ROCKNIX_JOYPAD_LICENSE = GPL-2.0-or-later
ROCKNIX_JOYPAD_LICENSE_FILES = LICENSE

# Indicate that this is a kernel module package
ROCKNIX_JOYPAD_DEPENDENCIES = @linux

# Define the build steps
define ROCKNIX_JOYPAD_BUILD_CMDS
	# Unset LDFLAGS to prevent linker flags from interfering
	unset LDFLAGS
	# Invoke the kernel build system to compile the module
	$(MAKE) -C $(LINUX_DIR) M=$(BR2_EXTERNAL_ROCKNIX_JOYPAD_PATH)/package/rocknix-joypad modules
endef

# Define the installation steps
define ROCKNIX_JOYPAD_INSTALL_TARGET_CMDS
	# Create the target directory for the module
	mkdir -p $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra/rocknix-joypad
	# Copy the compiled module(s) to the target directory
	cp *.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION)/extra/rocknix-joypad/
endef

# Register the package as a kernel module
$(eval $(kernel-module-package))

