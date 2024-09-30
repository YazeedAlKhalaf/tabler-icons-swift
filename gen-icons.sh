#! /bin/sh

tabler_icons_path="${tabler_icons_path}"

rm -rf Sources/TablerIcons/Icons.xcassets
mkdir -p Sources/TablerIcons/Icons.xcassets

for icon in "${tabler_icons_path}/svg/outline/*.svg"; do
    echo "copying ${icon}"
    icon_name=$(basename "$icon" .svg)
    icon_name="${icon_name}-outlined"
    mkdir -p "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset"
    cp "$icon" "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset/${icon_name}.svg"
    cat <<EOF > "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset/Contents.json"
{
  "images" : [
    {
      "filename" : "${icon_name}.svg",
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF
done
git add "Sources/TablerIcons/Icons.xcassets"

for icon in "${tabler_icons_path}/svg/filled/*.svg"; do
    echo "copying ${icon}"
    icon_name=$(basename "$icon" .svg)
    icon_name="${icon_name}-filled"
    mkdir -p "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset"
    cp "$icon" "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset/${icon_name}.svg"
    cat <<EOF > "Sources/TablerIcons/Icons.xcassets/${icon_name}.imageset/Contents.json"
{
  "images" : [
    {
      "filename" : "${icon_name}.svg",
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF
done
git add "Sources/TablerIcons/Icons.xcassets"