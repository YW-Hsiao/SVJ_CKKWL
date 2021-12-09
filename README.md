# SVJ_CKKWL
SVJ with CKKW-L jet merging  
## Abstract:
This repository try to modify the jet matching and merging algorithm of SVJ s-channel from MLM to CKKW-L.


======
## Contents
1. [1. Introduction](#1. Introduction)
2. [2. CKKW-L Settings](#2. CKKW-L Settings)
3. [3. `s-channel_ckkwl-v1`](#3. `s-channel_ckkwl-v1`)
4. [4. The Version of Simulation Tools](4. The Version of Simulation Tools)
* [Bibliography](#Bibliography)


======
## 1. Introduction
Introduction to every folder.  
Follow the creating and my idea sequence.

### 1-1. `s-channel_ckkwl-v0`
In MG, test `nevents 20000`, `iseed 100`, and `ktdurham 100`.

### 1-2. `s-channel_ckkwl-v1`
In MG, test `nevents 10000`, `iseed 100`, and `ktdurham 100`.  
It is faster when useing 10000 events.

### 1-3. `s-channel_ckkwl-v2-X`
In MG, test `nevents 10000`, `iseed 100`, and `ktdurham 20`.  
Here, I found that there is an error which is cannot work properly for PYTHIA.

### 1-4. `s-channel_ckkwl-v2`
In MG, test `nevents 10000`, `iseed 300`, and `ktdurham 20`.  
I found that this error is associated with MG random seed `iseed`.  
I fix `iseed 300` for later simulation.

### 1-5. `s-channel_ckkwl-v3`
In MG, test `nevents 10000`, `iseed 300`, and `ktdurham 20`.

### 1-6. `s_ckkwl-tms50`
In MG, test `nevents 10000`, `iseed 300`, and `ktdurham 50`.

### 1-7. `s_ckkwl-tms100`
In MG, test `nevents 10000`, `iseed 300`, and `ktdurham 100`.

### 1-8 `PYTHIA_Experts_tms`
This folder is a test by suggestions of ATLAS PYTHIA experts.

### 1-9. `CERNBox`
This folder is the backup to submit to ATLAS PYTHIA experts.
* PYTHIA_Experts: Back up from `s-channel_ckkwl-v2`
* PYTHIA_Experts_tms: Back up from `PYTHIA_Experts_tms`


======
## 2. CKKW-L Settings
### 2-1. MadGraph5_aMC@NLO parameters:
1. `ickkw`
2. `xqcut`
3. `maxjetflavor`
4. `alpsfact`
5. `dparameter`
6. `ktdurham`
7. `drjj`

### 2-2. PYTHIA8 parameters:
1. `Merging:doKTMerging`
2. `Merging:ktType`
3. `Merging:Dparameter`
4. `Merging:nJetMax`
5. `Merging:TMS`
6. `Merging:Process`
7. `Merging:nQuarksMerge`
8. `Merging:mayRemoveDecayProducts`


======
## 3. `s-channel_ckkwl-v1`
* The results are consistent between approachs main89 and DelphesPythia8.
* DP8 does NOT work when using the following commands:
    ```
    LHEFInputs:nSubruns       = 1
    Main:subrun               = 0
    ```


======
## 4. The Version of Simulation Tools
* I use the R525 CPU server:
* I use the docker image [alan200276/ubuntu](https://hub.docker.com/r/alan200276/ubuntu) by Alan Chung.

<table>
    <tr>
        <th></th>
        <th>MadGraph5_aMC@NLO</th>
        <th>PYTHIA8</th>
        <th>DELPHES</th>
        <th>HepMC</th>
        <th>LHAPDF</th>
        <th>FastJet</th>
    </tr>
    <tr>
        <th>Version</th>
        <td>2.7.3</td>
        <td>8.245</td>
        <td>3.4.2</td>
        <td>2.06.11</td>
        <td>6.3.0</td>
        <td>3.3.4</td>
    </tr>
</table>


======
## Bibliography
[1] [Merging in Madgraph5 and Pythia8, a brief overview](https://indico.cern.ch/event/333239/contributions/777451/attachments/649911/893775/ERCWorkShop.pdf)
[2] [stRoot](https://www.star.bnl.gov/webdata/dox/html/classPythia8_1_1MergingHooks.html)
[3] [Alan's Higgs-Classification vbf_boost.cmnd](https://github.com/alan200276/Higgs-Classification/blob/master/showering/vbf_boost.cmnd)

###### tags: `HEP`, `SVJ`, `CKKW-L`, `MG`, `PYTHIA`
