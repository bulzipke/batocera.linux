################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 08, 2025
ES_THEME_KNULLI_VERSION = 30684b8a4f8ee8476aa1db926e4213874c7ff764
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
