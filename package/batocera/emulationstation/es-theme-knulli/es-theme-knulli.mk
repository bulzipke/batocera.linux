################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on December 31, 2024
ES_THEME_KNULLI_VERSION = 316e17f92a69e3b15fe8a64ca37882ec78f68939
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
