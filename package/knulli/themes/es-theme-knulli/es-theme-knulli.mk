################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 25, 2025
ES_THEME_KNULLI_VERSION = 3d24dcb6e20025247491cf635e83e0ae13ac7dca
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
