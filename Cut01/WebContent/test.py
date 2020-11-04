import sys,json,pickle,lightgbm
import pandas as pd
jsonData =sys.stdin.readline() #  ①データはこうやって読み込むらしいがテキスト形式になっているので注意！
valid_x = pd.io.json.json_normalize(json.loads(jsonData) ) # json形式に変換してから、Pandasに読み込ませる

with open('./model.pickle', mode='rb') as fp: # ②モデルの読み込み
   fit = pickle.load(fp)

y_pred = fit.predict(valid_x, num_iteration=fit.best_iteration)
print(y_pred) # ③スコアリングの実施。この標準出力結果がNode.jsに返される