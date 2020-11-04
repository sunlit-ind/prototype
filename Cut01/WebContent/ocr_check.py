#学習素材でテスト
predicted = nn.sim(data[train_n:, :])
correct = 0
test_n = int(use_n-train_n)
for i in range(test_n):
    if ans_labels[np.argmax(labels[train_n+i])]==ans_labels[np.argmax(predicted[i])]:
        correct+=1

print('正答率=',100*correct/test_n,'%')