printf "\n"
printf "U L T I M A T E  G - I N D E X  T H E M E  B U I L D E R"
printf "\n"
printf "\n"
printf "\n"
printf "Please Ensure Correct CDN in the .env"
printf "\n"
printf "Starting the Script Now."
printf "\n"
printf "Currently Following Themes are Available:"
themes=("gradient-carnation" "gradient-curious-blue" "gradient-emerald" "gradient-ice-cold" "gradient-konifer" "gradient-netflix-red" "gradient-kournikova" "gradient-mona-lisa" "gradient-persian-rose" "gradient-purple-heart" "gradient-purple-mountains-majesty" "gradient-salmon" "gradient-selective-yellow" "gradient-shamrock" "gradient-witch-haze" "black-carnation" "black-curious-blue" "black-emerald" "black-ice-cold" "black-konifer" "black-netflix-red" "black-kournikova" "black-mona-lisa" "black-persian-rose" "black-purple-heart" "black-purple-mountains-majesty" "black-salmon" "black-selective-yellow" "black-shamrock" "black-witch-haze")
i=0
for theme in ${themes[@]}; do
  i=i+1
  printf "${i}. ${theme}"
done
read -p 'Enter theme name as Above(Case Sensitive): ' setTheme
printf "\n"
rm -rf outputs/${setTheme}/*
mkdir -p outputs\${setTheme}
export VUE_APP_THEME=${setTheme}
printf "Currently Building for ${setTheme}"
printf "\n"
yarn build
cp -r dist/. outputs/${setTheme}/.
