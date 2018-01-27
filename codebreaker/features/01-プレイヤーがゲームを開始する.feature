Feature: プレイヤーがゲームを開始する

  プレイヤーとして
  私はゲームを開始したい
  コードを破ることができるように

  Scenario: ゲーム開始
    Given 私はまだ遊んでいない
     When 私は新しいゲームを開始する
     Then 私は "Welcome to Codebreaker!" を見ることができる
      And 私は "Enter guess:" を見ることができる
