#!/usr/bin/perl

do
{
print"Output file : ";
my $file = <STDIN>;

unless(open FILE, '>'.$file) {
	die "Unable to create $file";
}

print FILE "#======================================================#\n";
print FILE "#========|| ==[[ .:: Hadi Ardiansah ::. ]]== ||========#\n";
print FILE "|                      065107058                       |\n";
print FILE "|                    Ilmu Komputer                     |\n";
print FILE "|     Fakultas Matematika Dan Ilmu Pengetahuan Alam    |\n";
print FILE "|                 Universitas Pakuan                   |\n";
print FILE "#======================================================#\n\n";
print "#======================================================#\n";
print "|           Perintah :                                 |\n";
print "|           Hitung Persegi    = persegi                |\n";
print "|           Hitung Segitiga   = segitiga               |\n";
print "#======================================================#\n";



print "Masukan perintah : ";
chop ($perintah = <STDIN>);
if ($perintah eq "persegi")
{
print "Panjang	= ";$p = <STDIN>;
print "Lebar	= ";$l = <STDIN>;
print FILE "===========================================\n";
print FILE "========= Luas & keliling Persegi =========\n";
print FILE "===========================================\n";
$luas = $p * $l;
$K = 2*($p + $l);
chop ($p,$l);
print FILE "Luas = Panjang X Lebar\n";
print FILE "Luas = $p X $l\n";
print FILE "Luas = $luas m^2\n";
print FILE "Keliling = 2 X (Panjang + Lebar)\n";
print FILE "Keliling = 2 X ($p + $l)\n";
print FILE "Keliling = $K m\n";
sleep(1);
}

elsif ($perintah eq "segitiga")
{
print "Sisi1 / Alas	= ";$a = <STDIN>;
print "Sisi2		= ";$s2 = <STDIN>;
print "Sisi3		= ";$s3 = <STDIN>;
print "Tinggi		= ";$t = <STDIN>;
print FILE "===================================\n";
print FILE "========= Luas & keliling =========\n";
print FILE "============= Segitiga ============\n";
print FILE "===================================\n";
$luas = 1/2 * $a * $t;
$keliling = $s1 + $s2 + $s3;
chop ($a,$t,$s1,$s2,$s3);
print FILE "Luas = 1/2 X Alas X Tinggi\n";
print FILE "Luas = 1/2 X $a X $t\n";
print FILE "Luas = $luas m^2\n";
print FILE "===================================\n";
print FILE "Keliling = sisi1 + sisi2 + sisi3\n";
print FILE "Keliling = $a + $s2 + $s3\n";
print FILE "Keliling = $keliling m\n";
sleep(1)
} else
	{
	print "Maaf, Perintah yang anda masukan salah \n";
	}

print "\n";
print "file $file telah di buat.\n";
print "Kembali ke menu awal ? [y/n]";
chop ($char = <STDIN>);

} while ($char eq "y");
close FILE;
