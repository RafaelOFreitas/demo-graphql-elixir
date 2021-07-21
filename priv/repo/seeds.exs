alias Demo.News.Link
alias Demo.Repo

Faker.start()

for _ <- 1..50 do
  %Link{
    url: Faker.Internet.url(),
    description: Faker.Commerce.department()
  } |> Repo.insert!
end
