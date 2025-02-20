################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 20, 2025
ES_THEME_KNULLI_VERSION = 68f94be265ace68c2c443843f335deca922bcdf1
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
