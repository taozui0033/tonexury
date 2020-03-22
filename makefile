app.PHONY: README.md

all: README.md

README.md:
	echo "#Tonexury" > README.md
	echo "##Unix Course for GitHub,project name is Guessinggame" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo "Number Lines is:" >> README.md
	wc -l guessinggame.sh >> README.md
	echo "Best Regards and Healthy"

clean:
	rm README.md
