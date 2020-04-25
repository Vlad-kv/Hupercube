.PHONY: Hupercube.jar

out_dir = temp

Hupercube.jar:
	mkdir -p $(out_dir)
	javac -d $(out_dir) -encoding UTF-8 src/hupercube/*.java
	jar cfm Hupercube.jar MANIFEST.MF -C $(out_dir) hupercube -C src constraints
	rm -r -f $(out_dir)
