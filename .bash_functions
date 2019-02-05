#Functions

# make new directory and jump in
mcd () { 
	mkdir -p $1 &&cd $1 
	}


# create python virtual environment
# cd into environment directory
# run 'source bin/activate'
pyven () {
	virtualenv $1 && cd $1 && senv
	}										

# show current working git branch
git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }


# create file and open in SublimeText
tao () { 
	touch $@ && subl $@ 
	} 


# make new html project with boilerplate html, css, and js files
mknew () {  
	cp -a ~/Templates/html_boilerplate/ ~/Desktop/$1 &&
	cd $1 &&
	subl . &&
	live-server
}


# run create-react-app install bootstrap and run 
car () {
	create-react-app $1 &&
	cd $1 &&
	npm i bootstrap@4.1.1 &&
	subl . &&
	npm start
}


# start farmers-market-finder
fmf () {
	cd Desktop/farmers-market-finder &&
	subl . && 
	live-server
}

# verbose copy 
vcp () {
	cp -a $1 $2
	echo 'Details for: ' $2
	tree -L 2 $2
}
