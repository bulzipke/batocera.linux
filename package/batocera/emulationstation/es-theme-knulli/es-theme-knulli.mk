################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 05, 2025
ES_THEME_KNULLI_VERSION = 3ddcaeece5b2d599065f5c2020825c18b5b93b9b
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
