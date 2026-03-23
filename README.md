# Arcadio
Arcadio Layout. Optimización para el español: alternativa a QWERTY.


<img width="1170" height="308" alt="ArcadioISO" src="https://github.com/user-attachments/assets/171a3adc-5947-45e6-be19-187cfc0a5bd9" />


# ¿Qué es Arcadio?

Arcadio es una distribución de teclado diseñada para resolver de manera pragmática y eficiente las fallas biomecánicas más molestas al escribir en español.

# ¿Qué cambia respecto a QWERTY?

Arcadio mantiene 23 de las 27 letras en su mismo dedo original (aunque cambien de fila o columna en el caso de los indices). Solo 2 letras cambian de dedo en la misma mano, y 2 cambian de mano.

Se respetan los atajos de teclado Ctrl + Z ,X ,C ,V no se mueven fisicamente de su lugar usual de QWERTY.

Esto da como resultado que conservas el **85% de tu memoria muscular** respecto a QWERTY.

# ¿Para quién está hecho?

1. **Usuarios prácticos:** Para todos aquellos que quieren cuidar sus manos con algo simple, pero no pueden permitirse pasar meses reaprendiendo un teclado desde cero ni tienen el presupuesto para comprar hardware ergonómico costoso. Se puede usar tanto en teclados formato ANSI e ISO.

2. **Hispanohablantes (y más allá):** Está optimizado principalmente para el español. Sin embargo, dada su arquitectura basada en frecuencias, funciona de bunea manera en inglés, francés, portugués, italiano y demás lenguas de raíces romances o germánicas.

## Arcadio en Números (vs. QWERTY)

Analizado bajo el motor de **Colemak-DH** y **Keyboard Layout Analyzer (KLA)** para el idioma español:

| Métrica                                  | Arcadio (Español) |  QWERTY   | ¿Qué significa para ti?                                                                                                   |
| :--------------------------------------- | :---------------: | :-------: | :------------------------------------------------------------------------------------------------------------------------ |
| **Esfuerzo Físico**                      |     **1.739**     |   2.313   | **~25% menos esfuerzo.** Tus dedos trabajan mucho menos al día.                                                           |
| **Tropiezos (Bigramas de un solo dedo)** |     **2.94%**     |   8.87%   | **Fluidez total.** Casi nunca usarás el mismo dedo dos veces seguidas.                                                    |
| **Balance de manos**                     |   **53% / 47%**   | 59% / 41% | **Simetría.** Se acabaron las sobrecargas en una sola mano.                                                               |
| **Cambios de dedo**                      |    **Solo 4**     |     0     | **Fácil de aprender.** Solo las letras `D, U, R, K` cambian de dedo.                                                      |
| **Uso del bloque base**                  |    **74.38%**     |  39.37%   | **Casi 3 de cada 4 teclas que presiones no estirarás los dedos**. Se reduce el esfuerzo a menos de la mitad.
| **Uso de las columnas centrales**        |      **~7%**      |  ~15.5%   | **Menos estiramientos laterales.** Más de la mitad de estiramientos desaparecen.                                          |


Sí deseas comprobar más a fondo el rendimiento de Arcadio, **por favor mirar [Pruebas](/analysis/pruebas.md)**

*(Nota: Sorprendentemente, su diseño rinde bien en inglés, logrando un esfuerzo fisico de 1.771).* **Por favor mirar [README-English](README-English.md)**

# Instalación

Vaya a [/windows](windows) o [/linux](linux) e instale Arcadio en su teclado ANSI o ISO.

Para sacarle todo el jugo a Arcadio, guíate por la tabla de colores inferior. Se recomienda usar una digitación alternativa, replicando el movimiento de *curl* (flexión) de la mano derecha también en la mano izquierda para lograr una escritura más natural.

<img width="1420" height="381" alt="mapa-dedos-ansi" src="https://github.com/user-attachments/assets/330447c2-63a2-4c48-a91c-f68567569a4e" />


# ¿Por qué se creó?


Nació de una necesidad personal. Soy venezolano, escribir es mi hobby y como estudiante universitario estaba cansado de que mis dedos sufrieran por la ineficiencia de QWERTY. 

Al no tener presupuesto para un teclado ortolineal o dividido, busqué alternativas de software (Dvorak, Colemak, Minimak). Ninguna me complació, ya que todas son para el idioma inglés, no existía algo pensado para el flujo de los hispanos. Así que me puse manos a la obra durante 4 meses.

# ¿Cómo se diseñó?

Investigué a fondo las alternativas existentes para extraer lo mejor de cada una. Analicé la frecuencia de aparición de las letras y bigramas del español para distribuir las teclas más comunes en los dedos más fuertes. Esto permitió balancear la carga de trabajo. 

Además, estudié la biomecánica de la mano para priorizar los movimientos más cómodos (como la flexión hacia adentro o *curl*, y los estiramientos rectos en lugar de laterales). Escribir en un teclado no es un movimiento natural, pero Arcadio busca que sea suave sin que se sienta confuso.

> **Nota técnica:** No se utilizó ningún algoritmo de generación automática (como `Carpalx` — ¡admito que no supe cómo instalarlo en mi PC!). En su lugar, el diseño fue un proceso empírico, utilizando el analizador de **Colemak-DH** y el **Keyboard Layout Analyzer (KLA)** como guías para validar matemáticamente la eficiencia de cada iteración.


# Apoya el proyecto

Arcadio es un proyecto de código abierto y gratuito. Si esta distribución de teclado te ha ayudado a escribir mejor, a reducir la fatiga o te ha salvado del síndrome del túnel carpiano, considera apoyar su desarrollo. ¡Cualquier aporte me ayuda a pagar el café (y los estudios) para seguir mejorándolo!

[**Cómprame un café en Ko-fi**](https://ko-fi.com/angelos23)
