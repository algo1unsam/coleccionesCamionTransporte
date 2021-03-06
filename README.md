# Empresa de transporte

Una empresa de transporte quiere administrar mejor las cargas que lleva sus vehículos.
Para eso requiere un sistema que le permita planificar qué cosas debe llevar cada uno sin sobrepasar su capacidad.

Las cosas que transporta tienen un nivel de peligrosidad. Este nivel es usado para impedir que cosas que superen cierto nivel de peligrosidad circulen en determinadas rutas.

## Cosas básicas

De las cosas que se pueden transportar nos interesa el peso y la peligrosidad:

- **Knight Rider**: pesa 500 kilos y su nivel de peligrosidad es 10.
- **Bumblebee**: pesa 800 kilos y su nivel de peligrosidad es 15 si está transformado en auto o 30 si está como robot.
- **Paquete de ladrillos**: cada ladrillo pesa 2 kilos, la cantidad de ladrillos que tiene puede variar. Para que el paquete no se desarme, lleva refuerzos, que pesan 10kg cada uno. Si el paquete tiene hasta 1000 ladrillos, se utiliza un refuerzo cada 100 ladrillos. Si tiene más ladrillos se debe utilizar un refuerzo cada 50 ladrillos.
  Los refuerzos se usan enteros, no se puede usar medio refuerzo; por ejemplo para 950 ladrillos se usan 10 refuerzos y para 1020 ladrillos se necesitan 21 refuerzos.
  La peligrosidad es igual a 50 menos la cantidad de refuerzos utilizados (pero no puede ser negativa, siendo 0 el mínimo posible).
  
> Testear el peso y la peligrosidad para un paquete de 950 ladrillos y otro de 1020 ladrillos. 

## Los transportes

Del **camión** sabemos su peso que es de 1000kg y su carga máxima que es de 2500kg; ambos deben poder ser modificados.
Se pide que entienda los siguientes mensajes:

- `cargar(cosa)` y `descargar(cosa)`: para manejar qué cosas hay en el camión; no hace falta hacer ningún control, asumimos que el que está cargando sabe lo que hace.
- `pesoTotal()`: es la suma del peso del camión vacío y el total de su su carga.
- `excedidoDeCarga()`: indica si la carga actual del camión supera a la carga máxima.
- `objetosPeligrosos(nivel)`: todos los objetos cargados que superan el nivel de peligrosidad indicados por el valor del parámetro;
- `objetosMasPeligrososQue(cosa)`: todos los objetos cargados que son más peligrosos que la cosa;
- `puedeCircularEnRuta(nivelMaximoPeligrosidad)` Puede circular si ninguna cosa que transporta supera el `nivelMaximoPeligrosidad`.
- `cosaMasPesada()`: la cosa más pesada que tenga el camión. Ojo que lo que se pide es _la cosa_ y no su peso.
- `convieneCargar(cosa)`: consideramos que conviene cargar una cosa en el camión si la cosa entra en el camión (sumándole la cosa nueva a la carga existente no se supera la carga máxima) y si hay ya cargado en el camión algún objeto más peligroso que la cosa que queremos cargar.

> Hacer al menos un test para cada método pedido.

La **camioneta** pesa 900kg, aunque puede ser modificado, y puede transportar un máximo de 5 cosas (no importa el peso). Se quiere:

- poder cargar y descargar cosas. La camioneta nunca puede cargar una cosa que pese más que ella misma (si se intenta hacerlo, debe lanzar un error como corresponde).
- saber si está excecido de carga, que sucede cuando que lleva más cargas que su máximo.

> Hacer al menos un test que pruebe que se lanza error al querer cargar un paquete de 500 ladrillos en la camioneta.

## El depósito

El **depósito** es el lugar donde se almacenan los vehículos cuando no están en la ruta. También se utiliza para cargar mercadería en los vehículos. 
Se pide:
- poder manejar los vehículos que entran y salen del depósito.
- saber si está en peligro, que ocurrre cuando la cantidad de vehículos excedidos de carga son más que la mitad de los vehículos dentro del depósito.
- poder recibir una cosa. En el depósito se van guardando las cosas que se reciben hasta llegar a 3 cosas. Cuando llega la tercera cosa se debe: 
  1. elegir el primer vehículo del depósito
  2. cargar todas las cosas a dicho vehiculo, teniendo en cuenta las validaciones del vehículo. Esto deja vacío de cosas el depósito
  3. sacar al vehículo del depósito, para dejar indicado que está en viaje

> Testear al menos el último punto.

## Más cosas

- **Batería antiaérea**: el peso y peligrosidad de la bateria depende de su estado que puede ser nueva, cargada o agotada.
  La batería nueva pesa 200kg y tiene peligrosidad 5.
  Al cargarla, se suma el peso de los misiles alcanzando los 300 kg y su peligrosidad pasa a 100.
  Luego de utilizarla, pasa a estar agotada, su peso es de 220 y su peligrosidad 25.
- **Contenedor portuario**: un contenedor puede tener otras cosas adentro. El peso es 100 + la suma de todas las cosas que estén adentro. Es tan peligroso como el objeto más peligroso que contiene. Si está vacío, su peligrosidad es 0.
- **Embalaje de seguridad**: es una cobertura que envuelve a cualquier otra cosa. El peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad del nivel de peligrosidad de lo que envuelve.

> Hacer al menos un test para cada cosa.
