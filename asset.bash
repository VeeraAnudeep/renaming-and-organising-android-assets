#Go to ur directory where all pngs are present
#First rename your files such that there are no spaces in file names and no uppercases in names
#To remove spaces 
find -name "* *" -type f | rename 's/ /_/g'
# To convert all filenames in to Lowercase 
rename 'y/A-Z/a-z/' *
# Make respective Density directories 
mkdir drawable-xxhdpi; mkdir drawable-xhdpi; mkdir drawable-hdpi; mkdir drawable-mdpi
done
# To move to respective density directories 
for file in $(find . -type f -iname '*@xxhdpi*'); do
  mv "$file" "drawable-xxhdpi/${file/@xxhdpi/}"
done
for file in $(find . -type f -iname '*@xhdpi*'); do
  mv "$file" "drawable-xhdpi/${file/@xhdpi/}"
done
for file in $(find . -type f -iname '*@hdpi*'); do
  mv "$file" "drawable-hdpi/${file/@hdpi/}"
done
for file in $(find . -type f -iname '*@mdpi*'); do
  mv "$file" "drawable-mdpi/${file/@mdpi/}"
done
