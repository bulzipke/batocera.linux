################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 07, 2025
ES_THEME_KNULLI_VERSION = 4a84456d06a25b9483ce5c7b4db261c087ced8e3
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
