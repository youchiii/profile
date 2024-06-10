# app/services/hello_salut_service.rb
class HelloSalutService
  # HTTPartyモジュールをインクルードしてHTTPリクエストを扱いやすくします
  include HTTParty
  # base_uriメソッドを使用して基本となるAPIのURLを設定します
  base_uri 'https://hellosalut.stefanbohacek.dev'

  # コンストラクタを定義し、デフォルトの言語として 'ja'（日本語）を設定します
  def initialize(lang = 'ja')
    # オプションとしてクエリパラメータに言語を設定します
    @options = { query: { lang: lang } }
  end

  # greetingメソッドを定義します
  def greeting
    # APIにGETリクエストを送信し、レスポンスを取得します
    response = self.class.get('/', @options)
    # レスポンスから'hello'キーの値を取り出し、そのエンコーディングをUTF-8に強制します
    response['hello'].force_encoding('UTF-8')
  end
end
