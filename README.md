# StartKubernetes

basvi: directory contenente i file di config

startNfsServer.sh: avvia un container docker che agisce da server NFS. L0indirizzo ip del server NFS è memorizzato nella variabile d'ambiente NFS_SERVER_IP

tidy.yaml: file configurazione kubernetes


startKubernates.sh: crea una configMap utlizzando la directory basvi/conf, sostituisce nel file tidy.yaml la variabile d'ambiente NFS_SERVER_IP ed avvia la configurazione kubernetes.


## Avvio

```bash
#start NFS server
source startNfsServer.sh

./startKubernates.sh

```
