################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 05, 2025
ES_THEME_KNULLI_VERSION = ac7aae2f03feaf39b922c99a22bf5e6958770e15
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
