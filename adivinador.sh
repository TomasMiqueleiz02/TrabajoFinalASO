
echo "Bienvenido al generador de numeros"
echo "La maquina generara un numero aleatrio del 1 al 50 tenes 10 intentos, Suerte!! "

aleatorio=$(( $RANDOM % 50 + 1 ))
contador=1
intento=10

while [ $contador -le $intento ];
do
        echo "Escoge un numero"
        read numero
        if [ $aleatorio = $numero ];
        then
                break

        elif [ $numero -lt $aleatorio ];
        then 
                echo "El numero secreto es mayor!"
                contador=$(( $contador + 1 ))

        elif [ $numero -gt $aleatorio ];
        then
                echo "El numero secreto es menor!"
                contador=$(( $contador + 1 ))
        else
                break

        fi
done
if [ $contador -le 5 ];
then
        echo "Ganaste,le diste una paliza!"
elif [ $contador -ge 6 ] && [ $contador -le 10 ];
then
        echo "Ganaste pero,por muy poco!"
else
        echo "No pudiste acertar el numero!"
fi
