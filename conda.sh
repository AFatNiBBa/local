
# Rimozione eventuali installazioni precedenti
rm -r ~/miniconda3

# Creazione cartella temporanea
mkdir ~/temp_conda
cd ~/temp_conda

# Download installer
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Installazione
TMPDIR=~/temp_conda bash Miniconda3-latest-Linux-x86_64.sh

# Rimozione spazzatura
cd ~
rm -r ~/temp_conda