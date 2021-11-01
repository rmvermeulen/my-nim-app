include karax/prelude

type
  Item = object
    name: string
    `type`: string

proc namedFruit(name: string): Item {.noSideEffect.} =
  Item(name:name, `type`: "fruit")

var list: seq[Item] = @[
  namedFruit("Apple"),
  namedFruit("Banana"),
  namedFruit("Cherrie"),
  Item(name: "Horizon: Zero Dawn", `type`: "AAA adventure game")
  ]
proc createDom(): VNode =
  buildHtml(tdiv):
    link(rel="stylesheet", href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"):
      text ""
    h1: text "My awesome Karax app!"
    tdiv(class = "flex flex-row")
    ul:
      for item in list:
        li(class="flex flex-row"):
            italic:
              text item.name
            p(class="px-8 text-red-400"):
              text " is a "
            pre:
              text item.type
    h2:
      text "Another title cos why not"

setRenderer createDom

