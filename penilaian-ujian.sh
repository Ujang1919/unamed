#!/bin/bash

while true; do
echo -n "masukkan nama murid: "
read nama
if [[ "$nama" ]] ; then
	echo -e "nama : $nama"
	echo -n "jumlah halaman ujian: "
	read halUjian
	maxSalah=$(("$halUjian" * 3))
	echo "maksimal salah: $maxSalah"
	echo -n "jumlah kesalahan: "
	read kesalahan
	echo -e "kesalahan: $kesalahan\n\n"	
	echo "mulai menghitung total nilai..."

	nilaiKelancaran=$(python -c "print(100 - ($kesalahan / $maxSalah * 100))")
	echo "kelancaran: $nilaiKelancaran"
	echo -n "berapa nilai tajwidnya?: "
	read tajwid
	nilaiTajwid=$(python -c "print($tajwid * 10 / 100)")
	echo "tajwid: $nilaiTajwid"
	echo -n "berapa nilai makhrojnya?: "
	read makhroj
	nilaiMakhroj=$(python -c "print($makhroj * 10 / 100)")
	echo -e "makhroj: $nilaiMakhroj\n\n"
	echo "total nilainya adalah:"
	totalNilai=$(python -c "print(($nilaiKelancaran * 80 / 100) + $nilaiTajwid + $nilaiMakhroj)")
	echo "$totalNilai"

	break
else
	echo "anda salah input"
	break
fi
done
