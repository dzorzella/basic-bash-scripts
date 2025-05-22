if [ $# -ne 2 ]; then
	echo "Usage: $0 numero1 numero2"
	exit 1
fi

echo "Somma : $(($1+$2))"
echo "Prodotto : $(($1*$2))"
echo "Divisione : $(($1/$2))"
echo "Sottrazione : $(($1-$2))"
