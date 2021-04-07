p "create Cerlists"
Carlist.create!(
  name: '月の輪自動車教習所(5月入校)',
  text: '教習生の満足度が一番高く、大学からも一番近い',
  period: 501515,
  profile_image: open("#{Rails.root}/db/dummy_images/tsukinowa3.jpeg")
)
Carlist.create!(
  name: '膳所自動車教習所(5月入校)',
  text: '安さを求めるならココ！',
  period: 501515,
  profile_image: open("#{Rails.root}/db/dummy_images/zeze.jpeg")
)
Carlist.create!(
  name: 'アヤハ自動車教習所(5月入校)',
  text: '草津駅側で下宿されている方にオススメ！',
  period: 501515,
  profile_image: open("#{Rails.root}/app/assets/images/ayaha.jpeg")
)
