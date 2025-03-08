################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 08, 2025
ES_THEME_KNULLI_VERSION = 52496f6a41d7c8f8f18060e0b2493d9d562937d9
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
