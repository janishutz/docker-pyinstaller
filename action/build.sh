set -e
if [ $# -eq 0 ]; then
	outdir=$(pwd)
else
	if [ -z "$1" ]; then
		outdir=$(pwd)
	else
		outdir=$1
	fi
fi

wine C:/Python/python.exe -m PyInstaller -F main.py
python -m PyInstaller -F main.py

cp ./main.exe $outdir
cp ./main $outdir
