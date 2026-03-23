# Pruebas del rendimiento de Arcadio

# Mapa de Calor

**Arcadio:**


<img width="1500" height="381" alt="mapa-de-calor-arcadio-iso" src="https://github.com/user-attachments/assets/3ca62944-722a-407a-be0c-2c9b2acf7202" />


El orden de las letras más frecuentes del español es el siguiente: **`e a o s n i r l d c t u p m b g v q h y f j z ñ x k w`**


* **El bloque base tiene un uso de 74.38%**


**Al contrario, QWERTY:**


<img width="1405" height="389" alt="mapa-de-calor-QWERTY-ES" src="https://github.com/user-attachments/assets/5ab47564-2035-475b-977f-c90fb848ae92" />



* **El bloque base tiene un uso de 39.37%**
* 

Se está forzando a realizar estiramientos verticales y laterales incómodos mas de la mitad de las veces que estás escribiendo, además de tener letras frecuentes ubicadas en dedos débiles y sobrecargas en la mano izquierda.

> **Nota:** Estas capturas fueron tomadas desde el analizador de [Colemak Mod-DH](https://colemakmods.github.io/mod-dh/analyze.html?freq=es), el cual se usó para las métricas base.

---

# Métricas y Esfuerzo

Las siguientes imágenes muestran en orden lo siguiente: la carga que tiene cada mano, la frecuencia de aparición de los bigramas, los bigramas más frecuentes en cada dedo, y el esfuerzo de cada dedo y el esfuerzo total. **Menos es mejor.**


**QWERTY:**

<img width="620" height="680" alt="QWERTY-ES-1" src="https://github.com/user-attachments/assets/a36c0ed4-bac9-4109-9956-f380aaf9d102" />



**Arcadio:**


<img width="541" height="732" alt="Arcadio-ES" src="https://github.com/user-attachments/assets/3aa11329-2343-4d34-8dc7-e486db3a1925" />



En resumen, Arcadio logra una reducción en los bigramas de un solo dedo (SFB) del 66.78% y en el esfuerzo físico total del 25%. En la práctica, te tropiezas solo un tercio de las veces con el mismo dedo y te ahorras una cuarta parte del esfuerzo físico. Sin embargo, el esfuerzo no es exactamente lo mismo que la distancia física real que viajan tus manos, ese es el siguiente factor que analizaremos a continuación.


## Distancia Recorrida

Como se mencionó anteriormente, el esfuerzo considera la carga en los dedos, pero la distancia mide cuánto viajan tus manos sobre el teclado para completar un texto.


Comparando el rendimiento con un corpus antiguo como todo el Don Quijote y un corpus con las palabras más comunes del español, usando para medir el [Keyboard Layout Analyzer (KLA)](https://patorjk.com/keyboard-layout-analyzer/) y el [fork de Stevep99](https://stevep99.github.io/keyboard-layout-analyzer/#/main) (Se tiene en cuenta que Arcadio usa la digitación alternativa) se obtienen los siguientes resultados:


**Don Quijote**

<img width="835" height="318" alt="DonQuijoteResultados" src="https://github.com/user-attachments/assets/e706fd5c-6383-4c22-9079-e72588ed35cd" />


**Distancia**


<img width="1499" height="596" alt="Don-Quijote-Distancia" src="https://github.com/user-attachments/assets/670c212b-6144-4c4f-a0dd-5d4f001cc8f9" />


Esto se traduce en un **ahorro de distancia física del 35%** frente a QWERTY. 



**Corpus de palabras más comunes**


<img width="946" height="358" alt="Resultados-palabras-mas-comunes-ES" src="https://github.com/user-attachments/assets/b14b2cde-1d06-4baf-b2b5-bb8887f29821" />


**Distancia**


<img width="1435" height="599" alt="DIstancia-palabbras-mas-comunes-es" src="https://github.com/user-attachments/assets/a2050d2e-4994-4937-88ec-6450e522de1e" />



La distribución Arcadio logra un **ahorro de distancia del 44%** al escribir en español. Casi se ahorra la mitad de la distancia que se debe recorrer al utilizar QWERTY en aproximadamente el **85%** de las palabras que se utilizan comúnmente en los textos del español.



# Prueba contra pangramas

Aunque los pangramas no son una medida certera, ya que son textos que fuerzan la aparición de todas las letras posibles del alfabeto, con estos dos pangramas "Quiere la boca exhausta vid, kiwi, piña y fugaz jamón" y "Jovencillo emponzoñado de whisky, que figurota exhibe", usando la siguiente tabla basada en la de Workman que mide las teclas más difíciles y las más cómodas de presionar de cada dedo, con el cambio que con la escritura alternativa priorizando el curl se pondrán a prueba distintas distribuciones de teclado.



<img width="624" height="208" alt="keyboard_grade_Arcadio" src="https://github.com/user-attachments/assets/c7fd5f57-ffb8-443c-b86d-4a58b2351186" />



**Regla de lectura:** Cada valor representa el esfuerzo acumulado de las letras que componen esa palabra. **Menos puntos es mejor.**


# "Jovencillo emponzoñado de whisky que figurota exhibe"

| Palabra         |  Arcadio  |  QWERTY   |
| :-------------- | :------:  | :------:  |
| **jovencillo**  |   19.0    |   19.0    |
| **emponzoñado** |   22.0    |   25.0    |
| **de**          |    4.0    |    3.0    |
| **whisky**      |   12.0    |   14.0    |
| **que**         |    7.0    |    9.0    |
| **figurota**    |   14.5    |   19.5    |
| **exhibe**      |   13.0    |   17.0    |
| **TOTAL**       | **91.5**  | **106.5** |


# "Quiere la boca exhausta vid kiwi piña y fugaz jamón"

| Palabra   | Arcadio  | QWERTY |
|  :---:    |  :---:   | :---:|
| **quiere**|    11.0  | 16.0 |
| **la**    |    3.5   |  2.5 |
| **boca**  |    9.5   | 10.5 |
| **exhausta** | 13.0  | 19.0 | 
| **vid**   |    8.0   |  6.0 |
| **kiwi**  |    6.0   |  7.0 |
| **piña**  |    8.0   |  9.0 |
| **y**     |    3.0   |  5.0 | 
| **fugaz** |    14.5  | 12.5 | 
| **jamón** |    11.5  |  9.5 |
| **TOTAL** | **88.0** | **97.0** |


# Rendimiento en otros idiomas


A continuación, se mostrará de forma resumida cómo rinde Arcadio en inglés, y francés, contra QWERTY o teclados oficiales correspondientes, empleando las métricas del analizador de Colemak Mod-DH.



# Inglés (English)

Como Arcadio está optimizado para español, es natural esperar una ligera variación de rendimiento al escribir en inglés. Sin embargo, las pruebas demuestran que la degradación es poca. 


**QWERTY**


<img width="544" height="747" alt="QWERTY-EN-1" src="https://github.com/user-attachments/assets/2293614b-7413-4ddd-9f2f-8d347f369744" />



**Arcadio**

<img width="608" height="854" alt="ArcadioEN" src="https://github.com/user-attachments/assets/90aea320-5730-4183-bb21-bca345c1b73e" />


Como se puede observar, Arcadio sigue superando a QWERTY en el idioma inglés por un gran margen, reduciendo drásticamente los bigramas de un solo dedo (SFB) y el esfuerzo total. Esto significa que puedes usar Arcadio para programar o escribir en inglés sin sentir que tu teclado te retrasa, obteniendo el beneficio total cuando vuelves a escribir en español.


**¿Estás interesado en saber más sobre cómo rinde Arcadio en inglés** Por favor, revisa el archivo [testing.md](testing.md) para un desglose detallado.



# Francés (French)


**AZERTY**


<img width="589" height="849" alt="AZERTY" src="https://github.com/user-attachments/assets/f54deb1a-341c-466f-b629-4d43a9beadbd" />



**Arcadio**


<img width="544" height="737" alt="ArcadioFR" src="https://github.com/user-attachments/assets/2d344da5-8cad-4016-8d96-89774f6cfc09" />










