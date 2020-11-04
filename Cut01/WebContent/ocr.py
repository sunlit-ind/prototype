#ocrプログラム

#①ライブラリのインポート
import numpy as np    
import neurolab as nl

#②変数定義(use_n：読み込むデータ数 train_n：学習に使用するデータ数)
ans_labels="abcdefghijklmnopqrstuvwxyz"
use_n = 50000
train_n = int(0.9*use_n)
pixel_n = 8*16
ans_n = len(ans_labels)
data = []
labels = []

#③学習素材の読み込み
with open('letter.data', 'r') as f:
    for line in f.readlines():
        list_vals = line.split('\t')
        
        #正解ラベル（出力データ）
        label = np.zeros((ans_n, 1))
        label[ans_labels.index(list_vals[1])] = 1
        labels.append(label)  
        
        #手書きデータ（入力データ）
        char = np.array([float(x) for x in list_vals[6:-1]])
        data.append(char)

        if len(data) >= use_n:
            break

#④データ形式の変換（labelsとdataをリスト→配列）            
labels = np.array(labels).reshape(-1, ans_n)
data = np.array(data).reshape(-1, pixel_n)

#⑤ニューラルネットを生成（域値:0~1,入力層(128),中間層(64),出力層(26)）
nn = nl.net.newff([[0, 1]] * pixel_n, [64, ans_n])
#学習方法としてRpropを指定
nn.trainf = nl.train.train_rprop
#⑥学習の実施
error_progress = nn.train(data[:train_n,:], labels[:train_n,:], 
                          epochs=10000, show=10, goal=5000)