import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var iconSize = (size.width - 16 * 2) / 8;

    return widgetContainer(
      padding: const EdgeInsets.all(16),
      height: null,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TaiwanIcons.red_man,
                color: Colors.blue,
                size: iconSize,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                TaiwanIcons.taiwan_main_island,
                color: Colors.green,
                size: iconSize,
              ),
              Icon(
                TaiwanIcons.taipei101,
                color: Colors.blue,
                size: iconSize,
              ),
              Icon(
                TaiwanIcons.asiatic_black_bear,
                color: Colors.blueGrey,
                size: iconSize,
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TaiwanIcons.slipper,
                color: Colors.indigo,
                size: iconSize,
              ),
              Icon(
                TaiwanIcons.sky_lantern,
                color: Colors.orange,
                size: iconSize,
              ),
              Icon(
                TaiwanIcons.fort_san_domingo,
                color: Colors.red,
                size: iconSize,
              ),
              Icon(
                TaiwanIcons.the_228_peace_memorial_park,
                color: Colors.grey,
                size: iconSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TaiwanIcons {
  TaiwanIcons._();

  static const _kFontFam = 'taiwanIcon';

  /// Taiwan Democracy Flag
  /// 台灣民主旗
  /// 台湾民主旗
  static const IconData td_flag =
  const IconData(0xA000, fontFamily: _kFontFam);

  /// R.O.C Flag
  /// 中華民國國旗
  /// 中華民国国旗
  static const IconData roc_flag =
  const IconData(0xA001, fontFamily: _kFontFam);

  /// Taiwan Main Island
  /// 台灣島
  /// 台湾本島
  static const IconData taiwan_main_island =
  const IconData(0xA002, fontFamily: _kFontFam);

  /// Penghu Islands
  /// 澎湖群島
  /// 澎湖諸島
  static const IconData penghu_islands =
  const IconData(0xA003, fontFamily: _kFontFam);

  /// Kinmen Main Island
  /// 金門島
  /// 金門島
  static const IconData kinmen_main_island =
  const IconData(0xA004, fontFamily: _kFontFam);

  /// Green Island
  /// 綠島
  /// 緑島
  static const IconData green_island =
  const IconData(0xA005, fontFamily: _kFontFam);

  /// Lamay Island
  /// 琉球嶼
  /// 小琉球
  static const IconData lamay_island =
  const IconData(0xA006, fontFamily: _kFontFam);

  /// Gueishan Island
  /// 龜山島
  /// 亀山島
  static const IconData gueishan_island =
  const IconData(0xA007, fontFamily: _kFontFam);

  /// Orchid Island
  /// 蘭嶼
  /// 蘭嶼
  static const IconData orchid_island =
  const IconData(0xA008, fontFamily: _kFontFam);

  /// Grave of Rokushisense
  /// 六氏先生之墓
  /// 六氏先生の墓
  static const IconData grave_of_rokushisense =
  const IconData(0xA009, fontFamily: _kFontFam);

  /// CKS Memorial Hall
  /// 中正紀念堂
  /// 中正紀念堂
  static const IconData cks_memorial_hall =
  const IconData(0xA00A, fontFamily: _kFontFam);

  /// Gate of CKS Hall
  /// 中正紀念堂大門
  /// 中正紀念堂の門
  static const IconData gate_of_cks_hall =
  const IconData(0xA00B, fontFamily: _kFontFam);

  /// Office of the president
  /// 總統府
  /// 総統府
  static const IconData president_office =
  const IconData(0xA00C, fontFamily: _kFontFam);

  /// Taipei 101
  /// 台北101
  /// 台北101
  static const IconData taipei101 =
  const IconData(0xA00D, fontFamily: _kFontFam);

  /// National Palace Museum
  /// 故宮博物館
  /// 故宮博物院
  static const IconData national_palace_museum =
  const IconData(0xA00E, fontFamily: _kFontFam);

  /// Martyr's Shrine in Taipei
  /// 國民革命忠烈祠
  /// 国民革命忠烈祠
  static const IconData martyrs_shrine =
  const IconData(0xA00F, fontFamily: _kFontFam);

  /// Longshan Temple
  /// 龍山寺
  /// 龍山寺
  static const IconData longshan_temple =
  const IconData(0xA010, fontFamily: _kFontFam);

  /// Sun Yat-sen Memorial Hall
  /// 國父紀念館
  /// 国父記念館
  static const IconData sys_hall =
  const IconData(0xA011, fontFamily: _kFontFam);

  /// Confucius Temple
  /// 孔子廟
  /// 孔子廟
  static const IconData confucius_temple =
  const IconData(0xA012, fontFamily: _kFontFam);

  /// Xingtian Temple
  /// 行天宮
  /// 行天宮
  static const IconData xingtian_temple =
  const IconData(0xA013, fontFamily: _kFontFam);

  /// National Taiwan Museum
  /// 國立台灣博物館
  /// 国立台湾博物館
  static const IconData national_taiwan_museum =
  const IconData(0xA014, fontFamily: _kFontFam);

  /// Grand Hotel
  /// 圓山大飯店
  /// 圓山大飯店
  static const IconData grand_hotel =
  const IconData(0xA015, fontFamily: _kFontFam);

  /// The 228 Peace Memorial Park
  /// ニニ八和平記念公園
  /// ニニ八平和記念公園
  static const IconData the_228_peace_memorial_park =
  const IconData(0xA016, fontFamily: _kFontFam);

  /// Fort San Domingo
  /// 紅毛城
  /// 紅毛城
  static const IconData fort_san_domingo =
  const IconData(0xA017, fontFamily: _kFontFam);

  /// Raohe Street Night Market
  /// 饒河夜市
  /// 饒河夜市
  static const IconData raohe_Street_night_market =
  const IconData(0xA018, fontFamily: _kFontFam);

  /// Red House Theater
  /// 西門紅樓
  /// 西門紅楼
  static const IconData red_house_theater =
  const IconData(0xA019, fontFamily: _kFontFam);

  /// Taipei Beimen
  /// 臺北府城北門
  /// 台北城北門
  static const IconData taipei_beimen =
  const IconData(0xA01A, fontFamily: _kFontFam);

  /// Taipei Xiaonanmen
  /// 臺北府城小南門
  /// 台北城小南門
  static const IconData taipei_xiaonanmen =
  const IconData(0xA01B, fontFamily: _kFontFam);

  /// Taipei Station
  /// 台北車站
  /// 台北駅
  static const IconData taipei_station =
  const IconData(0xA01C, fontFamily: _kFontFam);

  /// Fort Zeelandia
  /// 安平古堡
  /// 安平古堡
  static const IconData fort_zeelandia =
  const IconData(0xA01D, fontFamily: _kFontFam);

  /// Eternal Golden Castle
  /// 億載金城
  /// 億載金城
  static const IconData eternal_golden_castle =
  const IconData(0xA01E, fontFamily: _kFontFam);

  /// Fort Provintia
  /// 赤崁樓
  /// 赤カン楼
  static const IconData fort_provintia =
  const IconData(0xA01F, fontFamily: _kFontFam);

  /// Statue of Yoichi Hatta
  /// 八田與一雕像
  /// 八田與一像
  static const IconData yoichi_hatta_statue =
  const IconData(0xA020, fontFamily: _kFontFam);

  /// The 85 Sky Tower
  /// 高雄85大樓
  /// 高雄85ビル
  static const IconData the_85_sky_tower =
  const IconData(0xA021, fontFamily: _kFontFam);

  /// Formosa Boulevard Station
  /// 美麗島站
  /// 美麗島駅
  static const IconData formosa_boulevard_station =
  const IconData(0xA022, fontFamily: _kFontFam);

  /// Dragon and Tiger Pagoda
  /// 蓮池潭老虎塔
  /// 蓮池潭老虎塔
  static const IconData dragon_and_tiger_pagoda =
  const IconData(0xA023, fontFamily: _kFontFam);

  /// Rosary Catholic Church
  /// 天主教玫瑰堂
  /// ロザリオ大聖堂
  static const IconData rosary_catholic_church =
  const IconData(0xA024, fontFamily: _kFontFam);

  /// Longteng Bridge
  /// 龍騰断橋
  /// 龍騰断橋
  static const IconData longteng_bridge =
  const IconData(0xA025, fontFamily: _kFontFam);

  /// Lanyang Museum
  /// 蘭陽博物館
  /// 蘭陽博物館
  static const IconData lanyang_museum =
  const IconData(0xA026, fontFamily: _kFontFam);

  /// Tamsui Lover's Bridge
  /// 情人橋
  /// 情人橋
  static const IconData tamsui_lovers_bridge =
  const IconData(0xA027, fontFamily: _kFontFam);

  /// Beitou Hot Spring Museum
  /// 北投溫泉博物館
  /// 北投温泉記念館
  static const IconData beitou_hotspring_museum =
  const IconData(0xA028, fontFamily: _kFontFam);

  /// Tunghai University
  /// 東海大學
  /// 東海大学
  static const IconData tunghai_university =
  const IconData(0xA029, fontFamily: _kFontFam);

  /// Taichung Park
  /// 國立台中公園
  /// 国立台中公園湖心亭
  static const IconData taichung_park =
  const IconData(0xA02A, fontFamily: _kFontFam);

  /// Queen's Head
  /// 女王頭
  /// クイーンズヘッド
  static const IconData queens_head =
  const IconData(0xA02B, fontFamily: _kFontFam);

  /// National Taichung Theater
  /// 臺中國家歌劇院
  /// 台中国家歌劇院
  static const IconData national_taichung_theater =
  const IconData(0xA02C, fontFamily: _kFontFam);

  /// Buddha in Bagua Mountain
  /// 八卦山大佛
  /// 八卦山大仏
  static const IconData bagua_mountain_buddha =
  const IconData(0xA02D, fontFamily: _kFontFam);

  /// Fo Guang Shan Temple
  /// 佛光山寺
  /// 佛光山寺
  static const IconData fo_guang_shan_temple =
  const IconData(0xA02E, fontFamily: _kFontFam);

  /// Vase Rock
  /// 花瓶石
  /// 花瓶石
  static const IconData vase_rock =
  const IconData(0xA02F, fontFamily: _kFontFam);

  /// Tropic of Cancer
  /// 北迴歸線標牌
  /// 静浦北回帰線標誌
  static const IconData tropic_of_cancer =
  const IconData(0xA030, fontFamily: _kFontFam);

  /// Fuguijiao Lighthouse
  /// 富貴角燈塔
  /// 富貴角灯台
  static const IconData fuguijiao_lighthouse =
  const IconData(0xA031, fontFamily: _kFontFam);

  /// Yuwengdao Lighthouse
  /// 漁翁島燈塔
  /// 漁翁島灯台
  static const IconData yuwengdao_lighthouse =
  const IconData(0xA032, fontFamily: _kFontFam);

  /// Eluanbi Lighthouse
  /// 鵝鑾鼻燈塔
  /// ガランビ灯台
  static const IconData eluanbi_lighthouse =
  const IconData(0xA033, fontFamily: _kFontFam);

  /// Statue of Kano
  /// 嘉農棒球隊銅像
  /// 嘉義カノウ像
  static const IconData kano_statue =
  const IconData(0xA034, fontFamily: _kFontFam);

  /// Ershawan Battery
  /// 二沙灣砲臺
  /// 二沙湾砲台
  static const IconData ershawan_battery =
  const IconData(0xA035, fontFamily: _kFontFam);

  /// Chinese Bridge
  /// 中華橋
  /// 中華橋
  static const IconData chinese_bridge =
  const IconData(0xA036, fontFamily: _kFontFam);

  /// Balloon
  /// 熱氣球
  /// 熱氣球
  static const IconData balloon =
  const IconData(0xA037, fontFamily: _kFontFam);

  /// Taiwan Railways
  /// 台鐵
  /// 台湾鉄道
  static const IconData taiwan_railways =
  const IconData(0xA038, fontFamily: _kFontFam);

  /// Taipei MRT
  /// 台北捷運
  /// 台北 MRT
  static const IconData taipei_mrt =
  const IconData(0xA039, fontFamily: _kFontFam);

  /// Alishan Forest Railway
  /// 阿里山林業鐵路
  /// 阿里山森林鉄路
  static const IconData alishan_forest_railway =
  const IconData(0xA03A, fontFamily: _kFontFam);

  /// Taiwan High Speed Rail
  /// 高鐵
  /// 高速鉄道
  static const IconData taiwan_high_speed_rail =
  const IconData(0xA03B, fontFamily: _kFontFam);

  /// Maokong Gondola
  /// 貓空纜車
  /// 猫空ロープウェイ
  static const IconData maokong_gondola =
  const IconData(0xA03C, fontFamily: _kFontFam);

  /// YouBike
  /// 微笑單車
  /// YouBike
  static const IconData youbike =
  const IconData(0xA03D, fontFamily: _kFontFam);

  /// Yami's fishing boat
  /// 雅美族舟艇
  /// ヤミ族のボート
  static const IconData yamis_fishing_boat =
  const IconData(0xA03E, fontFamily: _kFontFam);

  /// Dragon boat
  /// 龍舟
  /// ドラゴンボート
  static const IconData dragon_boat =
  const IconData(0xA03F, fontFamily: _kFontFam);

  /// Lantern 1
  /// 紙燈籠1
  /// 提灯1
  static const IconData lantern1 =
  const IconData(0xA040, fontFamily: _kFontFam);

  /// Lantern 2
  /// 紙燈籠2
  /// 提灯2
  static const IconData lantern2 =
  const IconData(0xA041, fontFamily: _kFontFam);

  /// Sky lantern
  /// 天燈
  /// 天灯
  static const IconData sky_lantern =
  const IconData(0xA042, fontFamily: _kFontFam);

  /// Taiwanese bag
  /// 茄芷袋
  /// ナイロンバッグ
  static const IconData taiwanese_bag =
  const IconData(0xA043, fontFamily: _kFontFam);

  /// Postbox
  /// 郵筒
  /// ポスト
  static const IconData postbox =
  const IconData(0xA044, fontFamily: _kFontFam);

  /// Inclined postbox
  /// 歪腰郵筒
  /// 傾いたポスト
  static const IconData inclined_postbox =
  const IconData(0xA045, fontFamily: _kFontFam);

  /// Jug
  /// 酒壇
  /// 酒壺
  static const IconData jug =
  const IconData(0xA046, fontFamily: _kFontFam);

  /// Tea pot
  /// 茶具
  /// 茶器
  static const IconData tea_pot =
  const IconData(0xA047, fontFamily: _kFontFam);

  /// Tapioca milk tea
  /// 珍珠奶茶
  /// タピオカミルクティー
  static const IconData tapioca_milk_tea =
  const IconData(0xA048, fontFamily: _kFontFam);

  /// Taiwan Beer
  /// 台灣啤酒
  /// 台湾ビール
  static const IconData taiwan_beer =
  const IconData(0xA049, fontFamily: _kFontFam);

  /// Apple Cider
  /// 蘋果西打
  /// アップルサイダー
  static const IconData apple_cider =
  const IconData(0xA04A, fontFamily: _kFontFam);

  /// Spring couplets
  /// 春聯
  /// 春聯
  static const IconData spring_couplets =
  const IconData(0xA04B, fontFamily: _kFontFam);

  /// Fortune
  /// 筊
  /// おみくじ
  static const IconData fortune =
  const IconData(0xA04C, fontFamily: _kFontFam);

  /// Electric pot
  /// 大同電鍋
  /// 大同電鍋
  static const IconData electric_pot =
  const IconData(0xA04D, fontFamily: _kFontFam);

  /// Slipper
  /// 拖鞋
  /// スリッパ
  static const IconData slipper =
  const IconData(0xA04E, fontFamily: _kFontFam);

  /// Flying fish
  /// 飛魚
  /// トビウオ
  static const IconData flying_fish =
  const IconData(0xA04F, fontFamily: _kFontFam);

  /// Asiatic black bear
  /// 台灣黑熊
  /// ツキノワグマ
  static const IconData asiatic_black_bear =
  const IconData(0xA050, fontFamily: _kFontFam);

  /// Trash
  /// 一般垃圾
  /// 一般ゴミ
  static const IconData trash =
  const IconData(0xA051, fontFamily: _kFontFam);

  /// Recycling
  /// 資源回收
  /// リサイクル
  static const IconData recycling =
  const IconData(0xA052, fontFamily: _kFontFam);

  /// Turn Queue Box
  /// 機車停等區
  /// 自動二輪停車区
  static const IconData turn_queue_box =
  const IconData(0xA053, fontFamily: _kFontFam);

  /// Bicycle lane
  /// 自行車道
  /// 自転車道
  static const IconData bicycle_lane =
  const IconData(0xA054, fontFamily: _kFontFam);

  /// Red Man
  /// 小紅人
  /// 赤信号の人
  static const IconData red_man =
  const IconData(0xA055, fontFamily: _kFontFam);

  /// Green Man
  /// 小綠人
  /// 青信号の人
  static const IconData green_man =
  const IconData(0xA056, fontFamily: _kFontFam);

  /// Health Insurance
  /// 全民健康保險
  /// 全民健康保険
  static const IconData health_insurance =
  const IconData(0xA057, fontFamily: _kFontFam);

  /// PIXNET
  /// 痞客邦
  /// PIXNET
  static const IconData logo_pixnet =
  const IconData(0xA058, fontFamily: _kFontFam);

  /// 17 Live
  /// 17 直播
  /// 17 Live
  static const IconData logo_17_live =
  const IconData(0xA059, fontFamily: _kFontFam);

  /// WeMo
  static const IconData logo_wemo =
  const IconData(0xA05A, fontFamily: _kFontFam);

  /// Dcard
  static const IconData logo_dcard =
  const IconData(0xA05B, fontFamily: _kFontFam);

  /// Easy Card
  /// 悠遊卡
  /// 悠遊卡
  static const IconData logo_easy_card =
  const IconData(0xA05C, fontFamily: _kFontFam);

  /// iPASS
  /// 一卡通
  /// 一卡通
  static const IconData logo_ipass =
  const IconData(0xA05D, fontFamily: _kFontFam);

  /// YouBike
  /// 微笑單車
  /// YouBike
  static const IconData logo_youbike =
  const IconData(0xA05E, fontFamily: _kFontFam);

  /// Luxgen
  /// 納智捷
  /// Luxgen
  static const IconData logo_luxgen =
  const IconData(0xA05F, fontFamily: _kFontFam);

  /// Post
  /// 台灣郵政
  /// 台湾郵政
  static const IconData logo_post =
  const IconData(0xA060, fontFamily: _kFontFam);

  /// Taiwan Railways
  /// 台鐵
  /// 台湾鉄道
  static const IconData logo_taiwan_railways =
  const IconData(0xA061, fontFamily: _kFontFam);

  /// Taipei MRT
  /// 台北捷運
  /// 台北 MRT
  static const IconData logo_taipei_mrt =
  const IconData(0xA062, fontFamily: _kFontFam);

  /// Kaohsiung MRT
  /// 高雄捷運
  /// 高雄 MRT
  static const IconData logo_kaohsiung_mrt =
  const IconData(0xA063, fontFamily: _kFontFam);
}

