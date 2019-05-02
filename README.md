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
![4](blob:null/eee0b2a2-ece4-4da7-9a27-55b9b9958882)
precyzja=8:
![8](blob:null/662b3909-9b2b-4f47-b8ac-deedc55c2c21)
precyzja=16:
![16](blob:null/5f1db7ed-7b44-49a2-b148-ddb4fc02f824)