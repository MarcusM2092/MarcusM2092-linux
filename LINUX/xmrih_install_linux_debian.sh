sudo apt update && sudo apt upgrade -y && sudo apt install build-essential cmake git libuv1-dev libssl-dev libhwloc-dev -y

git clone https://github.com/xmrig/xmrig.git

cd xmrig

mkdir build

cd build

cmake ..

make

./xmrig -o gulf.moneroocean.stream:10128 -u 4AFBWzJRLTAfnVRXEJBmc6HLH1dFsajK3d5APP49NJUEVWwuurmjvZo54CxKM2as5Z8a87ENKjTcBgnFrrSREwtaMkAFraF -p linode_miner2