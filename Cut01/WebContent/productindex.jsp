<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>jkanbanサンプル</title>
    <link rel="stylesheet" href="/jkanban.min.css">
    <style>
      .task {
        background-color: #F4CE46;
      }
      .progress {
        background-color: #2A92BF;
      }
      .done {
        background-color: #00B961;
      }
    </style>

</head>

<body>
<!-- ここにタスク管理ボードが表示される -->
  <div id="myKanban"></div>



  <script src="/jkanban.min.js"></script>
  <script>

    //初期状態のタスク管理ボード用JSONデータ
    const defaultBoards = [
      {
          "id": "sample-board-1",
          "title": "タスク",
          "class": "task",
          "dragTo": ['sample-board-2'],
          "item": [
              { "title": "報告書の作成" },
              { "title": "14時から打ち合わせ" }
          ]
      },

      {
          "id": "sample-board-2",
          "title": "進行中",
          "class": "progress",
          "item": [{ "title": "○○案の企画書作成" }]
      },

      {
          "id": "sample-board-3",
          "title": "完了",
          "class": "done",
          "item": [{ "title": "日報の提出" }]
      }
    ];



    //jKanbanのインスタンス作成
    const kanban = new jKanban({
      element         : '#myKanban',  //タスク管理ボードを表示するHTML要素
      gutter          : '15px',       //ボード同士の間隔
      widthBoard      : '250px',      //ボードのサイズ
      boards          : defaultBoards,//初期状態のJSONデータ
      addItemButton   : true,         //タスク追加用のボタンを表示

      click: (elem) => kanban.removeElement(elem),  //タスクをクリックして削除
      buttonClick: (elem, id) => addFormElement(id) //タスク追加用の関数を指定
    });



    //タスク追加用の関数
    function addFormElement(id) {
        const formItem = document.createElement('form');

        formItem.innerHTML = '<input type="text">';  //タスクを追加するための入力ボックスを作成
        kanban.addForm(id, formItem);  //入力ボックスをボードに追加

        //タスクを登録する時のイベント処理
        formItem.addEventListener('submit', (e) => {
          e.preventDefault();

          kanban.addElement(id, {"title": e.target[0].value}); //入力された文字列をタスクとして登録
          formItem.parentNode.removeChild(formItem); //入力ボックスを非表示にするために削除
        })
    }


</script>
</body>
</html>