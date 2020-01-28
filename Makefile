all: create_readme add_title add_date add_num_of_lines

create_readme:
	touch README.md

add_title:
	echo "# Peer-graded Assignment: Bash, Make, Git, and Github #" > README.md
	echo >> README.md

add_date:
	date >> README.md
	echo >> README.md

add_num_of_lines:
	echo "Number of lines in Guessinggame: " >> README.md
	cat guessinggame.sh | wc -l >> README.md 
