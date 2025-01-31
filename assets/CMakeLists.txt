# Make sure the user is not executing this script directly
if(NOT InMV)
	message(FATAL_ERROR "Use the top-level cmake script!")
endif(NOT InMV)

set(AssetsFiles
	"fonts/anewhope.fontdat"
	"fonts/anewhope.tga"
	"fonts/anewhope_sharp1.fontdat"
	"fonts/anewhope_sharp1.tga"
	"fonts/anewhope_sharp2.fontdat"
	"fonts/anewhope_sharp2.tga"
	"fonts/anewhope_sharp3.fontdat"
	"fonts/anewhope_sharp3.tga"
	"fonts/anewhope_sharp4.fontdat"
	"fonts/anewhope_sharp4.tga"
	"fonts/anewhope_sharp5.fontdat"
	"fonts/anewhope_sharp5.tga"
	"fonts/ergoec_sharp1.fontdat"
	"fonts/ergoec_sharp1.tga"
	"fonts/ergoec_sharp2.fontdat"
	"fonts/ergoec_sharp2.tga"
	"fonts/ergoec_sharp3.fontdat"
	"fonts/ergoec_sharp3.tga"
	"fonts/ergoec_sharp4.fontdat"
	"fonts/ergoec_sharp4.tga"
	"fonts/ergoec_sharp5.fontdat"
	"fonts/ergoec_sharp5.tga"
	"fonts/ocr_a.fontdat"
	"fonts/ocr_a.tga"
	"fonts/ocr_a_sharp1.fontdat"
	"fonts/ocr_a_sharp1.tga"
	"fonts/ocr_a_sharp2.fontdat"
	"fonts/ocr_a_sharp2.tga"
	"fonts/ocr_a_sharp3.fontdat"
	"fonts/ocr_a_sharp3.tga"
	"fonts/ocr_a_sharp4.fontdat"
	"fonts/ocr_a_sharp4.tga"
	"gfx/2d/code_new_roman.tga"
	"gfx/2d/code_new_roman_mip1.tga"
	"gfx/2d/code_new_roman_mip2.tga"
	"gfx/2d/code_new_roman_mip3.tga"
	"gfx/2d/crosshaira.tga"
	"gfx/2d/crosshairj.tga"
	"gfx/2d/demorec.tga"
	"gfx/2d/mp_yteam_symbol.tga"
	"gfx/2d/mplus_1m_bold.tga"
	"gfx/2d/mplus_1m_bold_mip1.tga"
	"gfx/2d/mplus_1m_bold_mip2.tga"
	"gfx/2d/mplus_1m_bold_mip3.tga"
	"gfx/effects/mp_y_forcefield.jpg"
	"gfx/effects/mp_y_forcefield_d.jpg"
	"gfx/effects/mp_y_forcefield_d1.jpg"
	"gfx/hud/keys/back_off.tga"
	"gfx/hud/keys/back_on.tga"
	"gfx/hud/keys/crouch_off.tga"
	"gfx/hud/keys/crouch_on.tga"
	"gfx/hud/keys/forward_off.tga"
	"gfx/hud/keys/forward_on.tga"
	"gfx/hud/keys/jump_off.tga"
	"gfx/hud/keys/jump_on.tga"
	"gfx/hud/keys/left_off.tga"
	"gfx/hud/keys/left_on.tga"
	"gfx/hud/keys/right_off.tga"
	"gfx/hud/keys/right_on.tga"
	"gfx/menus/srv_102.jpg"
	"gfx/menus/srv_103.jpg"
	"gfx/menus/srv_104.jpg"
	"gfx/misc/tcRenderShader.jpg"
	"gfx/misc/tcRenderShader2.jpg"
	"gfx/misc/yellowstatic.jpg"
	"icons/iconf_neutral1.tga"
	"icons/iconf_neutral1_x.tga"
	"menu/medals/medal_assist.png"
	"menu/medals/medal_capture.png"
	"menu/medals/medal_defend.png"
	"menu/medals/medal_excellent.png"
	"menu/medals/medal_gauntlet.png"
	"menu/medals/medal_impressive.png"
	"models/flags/n_flag.md3"
	"models/map_objects/mp/flag3.jpg"
	"models/players/desann/sounds.cfg"
	"models/players/galak/sounds.cfg"
	"models/players/jeditrainer/sounds.cfg"
	"models/players/kyle/sounds.cfg"
	"models/players/lando/sounds.cfg"
	"models/players/luke/sounds.cfg"
	"models/players/morgan/sounds.cfg"
	"models/players/ugnaught/sounds.cfg"
	"models/players/weequay/sounds.cfg"
	"shaders/ctf3_yellowteam.shader"
	"shaders/jk2mv.shader_mv"
	"shaders/q3mod.shader"
	"shaders/sabers.dynGlow"
	"shaders/tcRenderShader.shader"
	"sound/chars/mothma/misc/40MOM017.mp3"
	"sound/chars/mothma/misc/40MOM019.mp3"
	"sound/chars/mothma/misc/40MOM024.mp3"
	"sound/chars/mothma/misc/40MOM025.mp3"
	"sound/chars/mothma/misc/40MOM026.mp3"
	"sound/chars/mothma/misc/40MOM053.mp3"
	"sound/common/warning.wav"
	"sound/effects/hitsound.wav"
	"sound/effects/hitsound2.wav"
	"sound/effects/hitsound3.wav"
	"sound/effects/hitsound4.wav"
	"sound/effects/hitsoundteam.wav"
	"strip/menus_jka.sp"
	"strip/mv.sp"
	"ui/jk2mp/controls.menu"
	"ui/jk2mp/createserver.menu"
	"ui/jk2mp/credits.menu"
	"ui/jk2mp/demo.menu"
	"ui/jk2mp/ingame.menu"
	"ui/jk2mp/ingame_callvote.menu"
	"ui/jk2mp/ingame_camera.menu"
	"ui/jk2mp/ingame_controls.menu"
	"ui/jk2mp/ingame_player.menu"
	"ui/jk2mp/ingame_player2_jka.menu"
	"ui/jk2mp/ingame_player_jka.menu"
	"ui/jk2mp/ingame_playerforce.menu"
	"ui/jk2mp/ingame_saber.menu"
	"ui/jk2mp/ingame_server.menu"
	"ui/jk2mp/ingame_setup.menu"
	"ui/jk2mp/ingame_setup_modoptions.menu"
	"ui/jk2mp/joinserver.menu"
	"ui/jk2mp/main.menu"
	"ui/jk2mp/menudef.h"
	"ui/jk2mp/multiplayer.menu"
	"ui/jk2mp/quit.menu"
	"ui/jk2mp/rules.menu"
	"ui/jk2mp/rules_force.menu"
	"ui/jk2mp/rules_games.menu"
	"ui/jk2mp/rules_items.menu"
	"ui/jk2mp/rules_weapons.menu"
	"ui/jk2mp/setup.menu"
	"ui/jk2mpingame.txt"
	"ui/jk2mv/download_info.menu"
	"ui/jk2mv/download_popup.menu"
	"vm/cgame_102.map"
	"vm/cgame_103.map"
	"vm/cgame_104.map"
	"vm/jk2mpgame_102.map"
	"vm/jk2mpgame_103.map"
	"vm/jk2mpgame_104.map"
	"vm/ui_102.map"
	"vm/ui_103.map"
	"vm/ui_104.map"
)

source_group("assetsmv" FILES ${AssetsFiles})

# generate assetsmv.pk3
if(MultiConfigGenerator)
	set(OUTFILE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/$<CONFIG>/base/assetsmv.pk3)
else()
	set(OUTFILE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/base/assetsmv.pk3)
endif()

include(InstallZIP)
add_zip_command(${CMAKE_CURRENT_BINARY_DIR}/assetsmv.pk3 ${OUTFILE}
	DIR "${CMAKE_SOURCE_DIR}/assets"
	FILES "${AssetsFiles}"
	DEPENDS "${AssetsFiles}"
)

add_custom_target(assetsmv DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/assetsmv.pk3" ${AssetsFiles})

if(WIN32 OR BuildPortableVersion)
	install(FILES ${CMAKE_CURRENT_BINARY_DIR}/assetsmv.pk3 DESTINATION "base")

	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/directories.txt DESTINATION ".")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/base/readme.txt DESTINATION "base")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/JKA/readme.txt DESTINATION "JKA")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/MBII/readme.txt DESTINATION "MBII")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/SWGL/readme.txt DESTINATION "SWGL")
elseif(APPLE)
	install(FILES ${CMAKE_CURRENT_BINARY_DIR}/assetsmv.pk3 DESTINATION "${MVMP}.app/Contents/MacOS/base")

	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/directories.txt DESTINATION "${MVMP}.app/Contents/MacOS")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/base/readme.txt DESTINATION "${MVMP}.app/Contents/MacOS/base")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/JKA/readme.txt DESTINATION "${MVMP}.app/Contents/MacOS/JKA")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/MBII/readme.txt DESTINATION "${MVMP}.app/Contents/MacOS/MBII")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/SWGL/readme.txt DESTINATION "${MVMP}.app/Contents/MacOS/SWGL")
else()
	install(FILES ${CMAKE_CURRENT_BINARY_DIR}/assetsmv.pk3 DESTINATION "share/jk2mv/base")

	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/directories.txt DESTINATION "share/jk2mv")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/base/readme.txt DESTINATION "share/jk2mv/base")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/JKA/readme.txt DESTINATION "share/jk2mv/JKA")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/MBII/readme.txt DESTINATION "share/jk2mv/MBII")
	install(FILES ${CMAKE_SOURCE_DIR}/assets/game_directories/SWGL/readme.txt DESTINATION "share/jk2mv/SWGL")
endif()
