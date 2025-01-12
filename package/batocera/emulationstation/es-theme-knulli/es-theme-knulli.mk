################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 12, 2025
ES_THEME_KNULLI_VERSION = ca5d4daaf0533396d87d8a952552b6e2e3bf1cf7
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
