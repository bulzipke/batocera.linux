################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 10, 2025
ES_THEME_KNULLI_VERSION = 9603d4845bc71c07d88381f29ff6518bd2b227e6
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
