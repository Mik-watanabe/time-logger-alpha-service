# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


users = ["MikuWatanabe", "Anna"]

users.each do |name|
    User.create(name: name)
end

Post.create(
    title: 'ベトナム行けなくてとても萎える',
    description: '本当ならば、あすから２泊三日で写真ちゃんとベトナムに行くはずだったが、有給がとれなくなったのでいけませんでしたチャンチャンって言う話',
    content: '## 背景
    有給はもっと早くから言えよな。
    もっと早くから取れよなって言う話。',
    status: 'draft'
)




