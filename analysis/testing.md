# Arcadio Performance Testing

# Heatmaps

**Arcadio:**

<img width="1406" height="383" alt="mapa-de-calor-arcadio-ansi" src="https://github.com/user-attachments/assets/20df48c9-8bab-46fe-832f-269483455d7a" />


The order of the most frequent letters in Spanish is as follows: **`e t a o i n s r h l d c u m f p g w y b v k x j q z`**

* **Home block usage is 70.52%**

**In contrast, QWERTY:**

<img width="1465" height="381" alt="mapa-de-calor-QWERTY-EN" src="https://github.com/user-attachments/assets/e3e84c36-081b-4413-b4ff-c39f6488593d" />

* **Home block usage is 31.39%**
* 
* It forces you to perform uncomfortable vertical and lateral stretches more than half the time you are typing, in addition to placing frequent letters on weak fingers and overloading the left hand.

> **Note:** These screenshots were taken from the [Colemak Mod-DH](https://colemakmods.github.io/mod-dh/analyze.html?freq=en_norvig) analyzer, which was used for the baseline metrics.

---

# Metrics and Effort

The following images show, in order: the load on each hand, the bigram frequency, the most frequent bigrams for each finger, the effort per finger, and the total effort. **Lower is better.**

**QWERTY:**

<img width="570" height="683" alt="QWERTY-EN" src="https://github.com/user-attachments/assets/8592d092-0247-45ec-9147-4d9cbc297759" />

**Arcadio:**

<img width="634" height="848" alt="Arcadio-EN1" src="https://github.com/user-attachments/assets/7dac41d5-61d5-4265-a51f-6dab480a5af1" />

In summary, Arcadio achieves a 54.68% reduction in Same Finger Bigrams (SFBs) and a 25% reduction in total physical effort. In practice, you trip over the same finger only a half of the time and save a quarter of the physical effort. However, effort is not exactly the same as the actual physical distance your hands travel; that is the next factor we will analyze below.

## Travel Distance

As previously mentioned, effort considers the load on your fingers, but distance measures how far your hands travel across the keyboard to complete a text.

Comparing performance with an older corpus like the entire Moby Dick and a corpus with the most common English words, using the [Keyboard Layout Analyzer (KLA)](https://patorjk.com/keyboard-layout-analyzer/) and [Stevep99's fork](https://stevep99.github.io/keyboard-layout-analyzer/#/main) (taking into account that Arcadio uses alternative fingering), the following results are obtained:

**Moby Dick**

<img width="922" height="355" alt="Resultados-moby-dick" src="https://github.com/user-attachments/assets/a9159b5e-1275-45bc-87e0-16f63f956040" />


**Distance**


<img width="1443" height="605" alt="Distancia-moby-dick" src="https://github.com/user-attachments/assets/1b4a6c38-f8b9-4102-b8d0-49a6b0170429" />

This translates to a **physical distance savings of 37%** compared to QWERTY. 


**Most Common Words Corpus**

<img width="806" height="312" alt="Palabras-mas-comunes-ingles" src="https://github.com/user-attachments/assets/1486a9ba-eb65-4661-bb34-4b30cde68a3c" />



**Distance**

<img width="1458" height="604" alt="Distancia-palabras-mas-comunes-EN" src="https://github.com/user-attachments/assets/3a1f935d-101b-4ac5-bc90-7155fc066508" />



The Arcadio layout achieves a **43% distance savings** when typing in english. You save almost half the distance you would have to travel using QWERTY in approximately **85%** of commonly used words in English texts.

# Pangram Testing

Although pangrams are not a perfect metric, as they force the appearance of every possible letter in the alphabet, we will test different keyboard layouts using the pangram: The quick brown fox jumps over the lazy dog. This uses the following table based on the Workman layout, which measures the hardest and easiest keys to press for each finger, adjusted for alternative fingering that prioritizes the curl.

<img width="624" height="208" alt="keyboard_grade_Arcadio" src="https://github.com/user-attachments/assets/c7fd5f57-ffb8-443c-b86d-4a58b2351186" />

**How to read this:** Each value represents the accumulated effort of the letters that make up that word. **Fewer points are better.**

# The quick brown fox jumps over the lazy dog

|      Word       |  Arcadio  |  QWERTY  |
| :-------------- | :------:  | :------: |
| **the**         |    5.0    |    9.0   |
| **quick**       |   11.0    |   12.0   |
| **brown**       |   11.0    |   15.0   |
| **fox**         |    8.0    |    6.0   |
| **jumps**       |   12.5    |   11.0   |
| **over**        |    7.0    |   10.0   |
| **the**         |    5.0    |    9.0   |
| **lazy**        |   10.5    |   11.5   |
| **dog**         |    7.0    |    6.0   |
| **TOTAL**       | **77.0**  | **89.5** |


# Performance in French

Below is a brief summary of how Arcadio performs in French compared to AZERTY and BÈPO using metrics from the Colemak Mod-DH analyzer, [Keyboard Layout Analyzer (KLA)](https://patorjk.com/keyboard-layout-analyzer/) and [Stevep99's fork](https://stevep99.github.io/keyboard-layout-analyzer/#/main).

# French

**AZERTY**


**Home block usage is 27.52**

<img width="758" height="905" alt="AZERTY" src="https://github.com/user-attachments/assets/63bff559-1d1b-4db5-bf53-b491e42fed55" />


**Arcadio**


**Home block usage is 73.00%**

<img width="544" height="737" alt="ArcadioFR" src="https://github.com/user-attachments/assets/2d344da5-8cad-4016-8d96-89774f6cfc09" />

Arcadio achieves a 62% reduction in Same Finger Bigrams (SFBs) and a 30% reduction in total physical effort.

# Les Miserables

<img width="1392" height="519" alt="ResultadosLesMiserables" src="https://github.com/user-attachments/assets/5a33dbd9-e6f9-4b99-919e-eb85335762e1" />

> Note: I used the Spanish ISO QWERTY layout as the base for Arcadio in KLA.

**Distance**

<img width="1437" height="649" alt="Distancia-Les-Miserables" src="https://github.com/user-attachments/assets/84bc611b-f247-4926-ab5f-8277caa28610" />

It achieves a **46.6% reduction in travel distance** compared to the standard AZERTY layout.

