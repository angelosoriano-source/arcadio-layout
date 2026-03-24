#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}=======================================${NC}"
echo -e "${GREEN}           Instalador Arcadio         ${NC}"
echo -e "${BLUE}=======================================${NC}"

# 1. Verificación de permisos
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Error: Ejecuta este script con sudo (sudo ./install.sh)${NC}"
  exit 1
fi

XKB_SYMBOLS_DIR="/usr/share/X11/xkb/symbols"
EVDEV_XML="/usr/share/X11/xkb/rules/evdev.xml"


echo "Generando archivos de símbolos XKB..."

# Generar archivo ANSI
cat << 'EOF' > "$XKB_SYMBOLS_DIR/arcadio_ansi"
partial alphanumeric_keys
xkb_symbols "arcadio_ansi" {

    name[Group1]= "Arcadio (US, with dead keys)";

    key <TLDE> { [dead_grave, dead_tilde,         grave,       asciitilde ] };
    key <AE01> { [         1,     exclam,    exclamdown,      onesuperior ] };
    key <AE02> { [         2,         at,   twosuperior, dead_doubleacute ] };
    key <AE03> { [         3, numbersign, threesuperior,      dead_macron ] };
    key <AE04> { [         4,     dollar,      currency,         sterling ] };
    key <AE05> { [         5,    percent,      EuroSign,     dead_cedilla ] };
    key <AE06> { [    6, dead_circumflex,    onequarter,      asciicircum ] };
    key <AE07> { [         7,  ampersand,       onehalf,        dead_horn ] };
    key <AE08> { [         8,   asterisk, threequarters,      dead_ogonek ] };
    key <AE09> { [         9,  parenleft, leftsinglequotemark, dead_breve ] };
    key <AE10> { [         0, parenright, rightsinglequotemark, dead_abovering ] };
    key <AE11> { [     minus, underscore,           yen,    dead_belowdot ] };
    key <AE12> { [     equal,       plus,      multiply,         division ] };

    key <AD01> { [         q,          Q,    adiaeresis,       Adiaeresis ] };
    key <AD02> { [         w,          W,         aring,            Aring ] };
    key <AD03> { [         k,          K,            oe,               OE ] };
    key <AD04> { [         d,          D,           eth,              ETH ] };
    key <AD05> { [         f,          F,    ediaeresis,       Ediaeresis ] };
    key <AD06> { [         j,          J,    idiaeresis,       Idiaeresis ] };
    key <AD07> { [         y,          Y,    udiaeresis,       Udiaeresis ] };
    key <AD08> { [         u,          U,        uacute,           Uacute ] };
    key <AD09> { [         l,          L,        oslash,           Oslash ] };
    key <AD10> { [ semicolon,      colon,     paragraph,           degree ] };
    key <AD11> { [ bracketleft,  braceleft,  guillemotleft, leftdoublequotemark ] };
    key <AD12> { [bracketright, braceright, guillemotright, rightdoublequotemark ] };

    key <AC01> { [         a,          A,        aacute,           Aacute ] };
    key <AC02> { [         s,          S,        ssharp,          section ] };
    key <AC03> { [         e,          E,        eacute,           Eacute ] };
    key <AC04> { [         t,          T,         thorn,            THORN ] };
    key <AC05> { [         g,          G,             g,                G ] };
    key <AC06> { [         h,          H,             h,                H ] };
    key <AC07> { [         n,          N,        ntilde,           Ntilde ] };
    key <AC08> { [         i,          I,        iacute,           Iacute ] };
    key <AC09> { [         o,          O,        oacute,           Oacute ] };
    key <AC10> { [         p,          P,    odiaeresis,       Odiaeresis ] };
    key <AC11> { [dead_acute, dead_diaeresis, apostrophe,        quotedbl ] };

    key <AB01> { [         z,          Z,            ae,               AE ] };
    key <AB02> { [         x,          X, periodcentered,     dead_stroke ] };
    key <AB03> { [         c,          C,     ccedilla,         Ccedilla  ] };
    key <AB04> { [         v,          V,             v,                V ] };
    key <AB05> { [         b,          B,             b,                B ] };
    key <AB06> { [         m,          M,            mu,        plusminus ] };
    key <AB07> { [         r,          R,    registered,        trademark ] };
    key <AB08> { [     comma,       less,     copyright,             cent ] };
    key <AB09> { [    period,    greater, dead_abovedot,       dead_caron ] };
    key <AB10> { [     slash,   question,  questiondown,        dead_hook ] };
    key <BKSL> { [ backslash,        bar,       notsign,        brokenbar ] };

    key <LSGT> { [ backslash,   bar,            backslash,      bar ] };

    include "level3(ralt_switch)"

};

// ----------------------------------------------------
EOF

# Generar archivo ISO
cat << 'EOF' > "$XKB_SYMBOLS_DIR/arcadio_iso"

partial alphanumeric_keys
xkb_symbols "arcadio_iso" {

    name[Group1]="Spanish (Latin American, Arcadio)";

    key <TLDE>  {[        bar,       degree,        notsign,      notsign ]};
    key <AE01>  {[          1,       exclam,            bar,   exclamdown ]};
    key <AE02>  {[          2,     quotedbl,             at,    oneeighth ]};
    key <AE03>  {[          3,   numbersign, periodcentered,     sterling ]};
    key <AE04>  {[          4,       dollar,     asciitilde,       dollar ]};
    key <AE05>  {[          5,      percent,        onehalf, threeeighths ]};
    key <AE06>  {[          6,    ampersand,        notsign,  fiveeighths ]};
    key <AE07>  {[          7,        slash,      braceleft, seveneighths ]};
    key <AE08>  {[          8,    parenleft,    bracketleft,    trademark ]};
    key <AE09>  {[          9,   parenright,   bracketright,    plusminus ]};
    key <AE10>  {[          0,        equal,     braceright,       degree ]};
    key <AE11>  {[ apostrophe,     question,      backslash, questiondown ]};
    key <AE12>  {[ questiondown, exclamdown,   dead_cedilla,  dead_ogonek ]};

    key <AD01>  {[          q,            Q,          U201A,        U201E ]};
    key <AD02>  {[          w,            W,          U2018,        U201C ]};
    key <AD03>  {[          k,            K,           cent,    copyright ]};
    key <AD04>  {[          d,            D,            eth,          ETH ]};
    key <AD05>  {[          f,            F,          U2019,        U201D ]};
    key <AD06>  {[          j,            J,          U222B,        U03A3 ]};
    key <AD07>  {[          y,            Y,          U2039, guillemoleft ]};
    key <AD08>  {[          u,            U,          U203A,guillemoright ]};
    key <AD09>  {[          l,            L,        lstroke,      Lstroke ]};
    key <AD10>  {[     ntilde,       Ntilde,     asciitilde,        U02EE ]};
    key <AD11>  {[ dead_acute,dead_diaeresis,dead_diaeresis,dead_abovering]};
    key <AD12>  {[       plus,     asterisk,     asciitilde,  dead_macron ]};

    key <AC01>  {[          a,            A,             ae,           AE ]};
    key <AC02>  {[          s,            S,         ssharp,      section ]};
    key <AC03>  {[          e,            E,       EuroSign               ]};
    key <AC04>  {[          t,            T,          thorn,        THORN ]};
    key <AC05>  {[          g,            G,            eng,          ENG ]};
    key <AC06>  {[          h,            H,        hstroke,      Hstroke ]};
    key <AC07>  {[          n,            N,         hyphen               ]};
    key <AC08>  {[          i,            I,          U2015               ]};
    key <AC09>  {[          o,            O,          U00BA,        U00AA ]};
    key <AC10>  {[          p,            P,          U2293,    paragraph ]};
    key <AC11>  {[  braceleft,  bracketleft, dead_circumflex,   braceleft ]};
    key <BKSL>  {[ braceright, bracketright,     dead_grave,   braceright ]};

    key <LSGT>  {[       less,      greater,            bar,        U00A6 ]};
    key <AB01>  {[          z,            Z,            ezh,          EZH ]};
    key <AB02>  {[          x,            X,          U2020,        U2021 ]};
    key <AB03>  {[          c,            C,          U00E7,        U00C7 ]};
    key <AB04>  {[          v,            V,          U03B3               ]};
    key <AB05>  {[          b,            B,          U2022,        U03B2 ]};
    key <AB06>  {[          m,            M                               ]};
    key <AB07>  {[          r,            R,     registered,    trademark ]};
    key <AB08>  {[      comma,    semicolon,         hyphen,     multiply ]};
    key <AB09>  {[     period,        colon,          U0323,     division ]};
    key <AB10>  {[      minus,   underscore                               ]};

    include "level3(ralt_switch)"
};

// ----------------------------------------------------
EOF

chmod 644 "$XKB_SYMBOLS_DIR/arcadio_ansi"
chmod 644 "$XKB_SYMBOLS_DIR/arcadio_iso"


echo "Configurando la interfaz gráfica (GNOME/KDE)..."

# Hacer una copia de seguridad por seguridad extrema
cp "$EVDEV_XML" "${EVDEV_XML}.backup_arcadio"

# Verificar si Arcadio ya está instalado para no duplicarlo
if grep -q "arcadio_ansi" "$EVDEV_XML"; then
    echo -e "${BLUE}Arcadio ya está registrado en evdev.xml. Saltando este paso.${NC}"
else
    # Inyectar el código XML justo antes de que se cierre la etiqueta </layoutList>
    sed -i '/<\/layoutList>/i \
        <layout>\
          <configItem>\
            <name>arcadio_ansi</name>\
            <shortDescription>arc</shortDescription>\
            <description>Spanish (Arcadio ANSI)</description>\
            <languageList><iso639Id>spa</iso639Id></languageList>\
          </configItem>\
        </layout>\
        <layout>\
          <configItem>\
            <name>arcadio_iso</name>\
            <shortDescription>arc</shortDescription>\
            <description>Spanish (Arcadio ISO)</description>\
            <languageList><iso639Id>spa</iso639Id></languageList>\
          </configItem>\
        </layout>' "$EVDEV_XML"
    echo "Registro XML inyectado correctamente."
fi


echo "Limpiando la caché del sistema..."
rm -rf /var/lib/xkb/*

echo -e "${GREEN}¡Instalación completada!${NC}"
echo -e "Es recomendable cerrar sesión o reiniciar tu computadora para que"
echo -e "el sistema gráfico (Settings) reconozca los nuevos teclados."
echo -e "${BLUE}=======================================${NC}"
