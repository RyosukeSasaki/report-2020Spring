FILES=hyousi.pdf\
			out/main.pdf
R=1
NUM=4

connect: $(FILES)
	pdftk $(FILES) cat output "B-$(NUM)佐々木良輔.pdf"

re: $(FILES)
	pdftk $(FILES) cat output "B-$(NUM)佐々木良輔R$(R).pdf"

clean:
	rm C-$(NUM)佐々木良輔*
