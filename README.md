# Szymon Zieliński
## Fortran projekt 1

### Opis projektu::
Program porównuje czasy działania czterech algorytmow mnożenia macierzy:
1.Wersja naiwna. (naive)
2.Poprawiona funkcja korzytająca z informacji jak przechowywane są tablice w języku fortran oraz z faktu, że można zmieniać kolejność operacji dodawania (a co za tym idzie kolejność pętli). (better) 
3.Kolejna poprawiona funkcja wykorzystująca fakt, że mnożenie wiersza przez kolumnę (lub na odwrót) można przedstawić jako iloczyn skalarny. (dot)
4.Funkcja matmul wbudowa w Fortran-a. (matmul)
Wyniki przedstawione są dla 3 różnych precyzji na wykresach.

#### Pliki:
1.W katalogu src:
* **main.f90** zawierający główny kod projektu
* **naive.f90** moduł zawierający interface z podpiętymi trzema funkcjami mnożącymi macierze metodą naiwną - każda obsługująca daną precyzję
* **betermath.f90** to samo tylko funkcje mnożące macierze metodą ulepszoną
* **dot.f90** to samo tylko funkcje mnożące macierze metodą wykorzystująca iloczyn skalarny
2. W katalogu res:
* **pliki .pdf** zawierające wykresy
* **pliki .p** zawierające kod gnuplot do stworzenia tych wykresów
* **res...** pliki z pamiarami czasów dla danej precyzji oraz algorytmu

### Uwagi:
Program został napisany na system Windows, co oznacza że aby zadziałał na linuxie należy zmienić format podawania ścieżek względnych do plików z wynikami w pliku main.F90
Plik cmake nie został spradzony z powodu braku cmake-a na moim systemie windows

### Wnioski:
Wykresy:
precyzja=4:
![4](https://github.com/Simon1PL/FortranProject1/blob/master/res/wykres4.pdf)
precyzja=8:
![8](https://github.com/Simon1PL/FortranProject1/blob/master/res/wykres8.pdf)
precyzja=16:
![16](https://render.githubusercontent.com/view/pdf?commit=5fabc15eae4836da00ae637e45bfa5de1c8e782f&enc_url=68747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f53696d6f6e31504c2f466f727472616e50726f6a656374312f356661626331356561653438333664613030616536333765343562666135646531633865373832662f7265732f77796b72657331362e706466&nwo=Simon1PL%2FFortranProject1&path=res%2Fwykres16.pdf&repository_id=183651746&repository_type=Repository#e973f83f-b5cb-4066-8974-a08a12f6c2d9)
