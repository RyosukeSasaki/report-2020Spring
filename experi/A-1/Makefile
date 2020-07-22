FILES=hyousi.pdf\
			out/main.pdf
R=1
NUM=1

connect: $(FILES)
	pdftk $(FILES) cat output "A-$(NUM)佐々木良輔.pdf"

re: $(FILES)
	pdftk $(FILES) cat output "A-$(NUM)佐々木良輔R$(R).pdf"

clean:
	rm A-$(NUM)佐々木良輔*
