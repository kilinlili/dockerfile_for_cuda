# Dockerfile 覚書

OpenCVからcudaを使いたい． 

## 参考資料


## 現在状況

- Dockerfile
失敗中

- Dockerfile.base
基本イメージ．これでコンテナ作って内部でCMake叩いてデバッグ．


## OpenCV sample

cuda_sample.cu  
nvcc cuda_sample.cu
で動作．OpenCVは関係無いが，動作確認用．

test1.cpp
正常に動作    

test2.cpp
\<opencv2/gpu/gpu.hpp\>が存在しないというエラー  
名前が違う可能性が高い．/gpu/gpu.hppはもう存在しなくて，cudaarithm.hppに変更  
諸々改造後，正常動作．



test3.cpp
正常に動作  
[https://qiita.com/iwatake2222/items/dd7ea3efe65ac77bf783#c%E3%81%8B%E3%82%89opencv%E3%81%AEcuda%E9%96%A2%E6%95%B0%E3%82%92%E4%BD%BF%E3%81%86](Qiita参考記事)  
この記事のPythonサンプルも動作確認  








