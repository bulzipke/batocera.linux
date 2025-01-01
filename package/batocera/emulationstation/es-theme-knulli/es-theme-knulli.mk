################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 01, 2025
ES_THEME_KNULLI_VERSION = 1d2bd15b62f1877e71011c132723306dab9b9fab
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
