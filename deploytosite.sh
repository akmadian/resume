echo "Building..."
pdflatex -interaction=nonstopmode resume.tex
echo "\nDeploying to site.."
rsync -urvP --delete-after ~/repos/resume/resume.pdf root@madian.co:/var/www/madian/
echo "Done!"