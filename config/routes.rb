Jets.application.routes.draw do
  get "foo1-a", to: "foo1#a"
  get "foo1-b", to: "foo1#b"
  get "foo2-a", to: "foo2#a"
  get "foo2-b", to: "foo2#b"

  root "jets/public#show"
  any "*catchall", to: "jets/public#show"
end
