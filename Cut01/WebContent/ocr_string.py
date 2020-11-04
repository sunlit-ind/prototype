#文字列画像の認識

from PIL import Image
import numpy as np

# 手書き画像の読み込みとimageオブジェクトの作成
img = Image.open('ebiworks.png')
width, height = img.size
img2 = Image.new('RGB', (width, height))

#getpixel((x,y))で左からx番目,上からy番目のピクセルの色を取得し、img_pixelsに追加する
img_pixels = []
for i in range(8):
    for y in range(16):
        for x in range(8):
            img_pixels.append(img.getpixel((x+8*i,y)))

#データの規格化
img_pixels_test = []
for j in range(8):
    img_pixels_norm = []
    for i in range(8*16):
        p = img_pixels[i+j*8*16][0]
        if p == 0:
            img_pixels_norm.append(1.)
        else:
            img_pixels_norm.append(0.)

    img_pixels_norm = np.array( img_pixels_norm).reshape(-1,8*16)
    img_pixels_test.append(img_pixels_norm)

#テスト
result=[]
for i in range(8):
    predicted = nn.sim(img_pixels_test[i])
    result.append(orig_labels[np.argmax(predicted)])

result_str = ''.join(result)
print('結果:',result_str)