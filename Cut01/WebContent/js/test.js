/**
 * http://usejsdoc.org/
 */
var testData = require('./test.json'); // JSON形式のデータを変数に格納
var {PythonShell} = require('python-shell');

var options = {
    pythonPath: 'C:/Users/XXXXXXXXX/Anaconda3/python' ,
    pythonOptions: ['-u'],
    scriptPath: './'
};

var pyshell = new PythonShell('./test.py',options);
pyshell.send(JSON.stringify(testData)) ; // 文字列に直してからじゃないと送れないみたい・・・。JSONのままだと怒られる。modeをjsonで指定しても変化はなかった。
pyshell.on('message',function(message){
     console.log("予測結果:"+JSON.parse(message) ); // JSONにパースする必要はないけども、これが割と求めている表示になってくれたので、こうしている
});