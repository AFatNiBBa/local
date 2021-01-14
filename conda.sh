
# Rimozione eventuali installazioni precedenti
rm -r ~/miniconda3

# Download installer
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Installazione
TMPDIR=$PWD bash Miniconda3-latest-Linux-x86_64.sh

# Uscita cartella temporanea
cd ..
rm -r tempInstaller
