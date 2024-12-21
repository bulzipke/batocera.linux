################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on December 21, 2024
ES_THEME_KNULLI_VERSION = 9f9e25f343c7d82a65a1de9eeb2bc6dbc53865eb
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
