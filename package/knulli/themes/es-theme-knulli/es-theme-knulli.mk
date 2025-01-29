################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 29, 2025
ES_THEME_KNULLI_VERSION = 21813407a6e5137fc8868c97067d5e31a981c35e
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
