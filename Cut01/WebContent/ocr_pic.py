#１文字画像の認識

from PIL import Image

# 手書き画像の読み込みとimageオブジェクトの作成
img = Image.open('a.png')
width, height = img.size
img2 = Image.new('RGB', (width, height))

 # getpixel((x,y))で左からx番目,上からy番目のピクセルの色を取得し、img_pixelsに追加する
img_pixels = []
for y in range(height):
    for x in range(width):
        img_pixels.append(img.getpixel((x,y)))

# データの規格化
img_pixels_norm = []
for i in range(8*16):
    p = img_pixels[i][0]
    if p == 0:
        img_pixels_norm.append(1.)
    else:
        img_pixels_norm.append(0.)

img_pixels_norm = np.array( img_pixels_norm).reshape(-1,8*16)

#結果表示
predicted = nn.sim( img_pixels_norm)
print('結果:', orig_labels[np.argmax(predicted)])