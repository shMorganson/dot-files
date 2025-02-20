-- This allows me to create my custom snippets
-- All you need to do, if using the lazyvim.org distro, is to enable the
-- coding.luasnip LazyExtra and then add this file

-- If you're a dotfiles scavenger, definitely watch this video (you're welcome)
-- https://youtu.be/FmHhonPjvvA?si=8NrcRWu4GGdmTzee

return {
  "L3MON4D3/LuaSnip",
  enabled = true,
  opts = function(_, opts)
    local ls = require("luasnip")

    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node

    local function clipboard()
      return vim.fn.getreg("+")
    end

    -- Custom snippets
    -- the "all" after ls.add_snippets("all" is the filetype, you can know a
    -- file filetype with :set ft
    -- Custom snippets

    -- #####################################################################
    --                            Markdown
    -- #####################################################################

    -- Helper function to create code block snippets
    local function create_code_block_snippet(lang)
      return s({
        trig = lang,
        name = "Codeblock",
        desc = lang .. " codeblock",
      }, {
        t({ "```" .. lang, "" }),
        i(1),
        t({ "", "```" }),
      })
    end

    -- Define languages for code blocks
    local languages = {
      "txt",
      "lua",
      "sql",
      "go",
      "regex",
      "bash",
      "markdown",
      "markdown_inline",
      "yaml",
      "json",
      "jsonc",
      "cpp",
      "csv",
      "java",
      "javascript",
      "python",
      "dockerfile",
      "html",
      "css",
      "templ",
      "php",
    }

    -- Generate snippets for all languages
    local snippets = {}

    for _, lang in ipairs(languages) do
      table.insert(snippets, create_code_block_snippet(lang))
    end

    table.insert(
      snippets,
      s({
        trig = "chirpy",
        name = "Disable markdownlint and prettier for chirpy",
        desc = "Disable markdownlint and prettier for chirpy",
      }, {
        t({
          " ",
          "<!-- markdownlint-disable -->",
          "<!-- prettier-ignore-start -->",
          " ",
          "<!-- tip=green, info=blue, warning=yellow, danger=red -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          "",
          "{: .prompt-",
        }),
        -- In case you want to add a default value "tip" here, but I'm having
        -- issues with autosave
        -- i(2, "tip"),
        i(2),
        t({
          " }",
          " ",
          "<!-- prettier-ignore-end -->",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "markdownlint",
        name = "Add markdownlint disable and restore headings",
        desc = "Add markdownlint disable and restore headings",
      }, {
        t({
          " ",
          "<!-- markdownlint-disable -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "prettierignore",
        name = "Add prettier ignore start and end headings",
        desc = "Add prettier ignore start and end headings",
      }, {
        t({
          " ",
          "<!-- prettier-ignore-start -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- prettier-ignore-end -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "linkt",
        name = 'Add this -> [](){:target="_blank"}',
        desc = 'Add this -> [](){:target="_blank"}',
      }, {
        t("["),
        i(1),
        t("]("),
        i(2),
        t('){:target="_blank"}'),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "todo",
        name = "Add TODO: item",
        desc = "Add TODO: item",
      }, {
        t("<!-- TODO: "),
        i(1),
        t(" -->"),
      })
    )

    -- Paste clipboard contents in link section, move cursor to ()
    table.insert(
      snippets,
      s({
        trig = "linkc",
        name = "Paste clipboard as .md link",
        desc = "Paste clipboard as .md link",
      }, {
        t("["),
        i(1),
        t("]("),
        f(clipboard, {}),
        t(")"),
      })
    )

    -- Paste clipboard contents in link section, move cursor to ()
    table.insert(
      snippets,
      s({
        trig = "linkcex",
        name = "Paste clipboard as EXT .md link",
        desc = "Paste clipboard as EXT .md link",
      }, {
        t("["),
        i(1),
        t("]("),
        f(clipboard, {}),
        t('){:target="_blank"}'),
      })
    )

    -- Inserting "my dotfiles" link
    table.insert(
      snippets,
      s({
        trig = "dotfiles latest",
        name = "Adds -> [my dotfiles](https://github.com/linkarzu/dotfiles-latest)",
        desc = "Add link to https://github.com/linkarzu/dotfiles-latest",
      }, {
        t("[my dotfiles](https://github.com/linkarzu/dotfiles-latest)"),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "support me",
        name = "Inserts links (Ko-fi, Twitter, TikTok)",
        desc = "Inserts links (Ko-fi, Twitter, TikTok)",
      }, {
        t({
          "Members only discord -> https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "☕ Support me -> https://ko-fi.com/linkarzu",
          "☑ My Twitter -> https://x.com/link_arzu",
          "❤‍🔥 My tiktok -> https://www.tiktok.com/@linkarzu",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "discord",
        name = "discord support",
        desc = "discord support",
      }, {
        t({
          "```txt",
          "I have a members only discord, it's goal is to troubleshoot stuff related to my videos, and try to help users out",
          "If you want to join, the link can be found below",
          "https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "```",
        }),
      })
    )

    -- Add a snippet for inserting a blogpost article template
    table.insert(
      snippets,
      s({
        trig = "blogpost template",
        name = "Insert blog post template",
        desc = "Insert blog post template with frontmatter and sections",
      }, {
        t({ "---", "title: " }),
        i(1, ""),
        t({ "", "description: " }),
        i(2, ""),
        t({
          "",
          "image:",
          "  path: ./../../assets/img/imgs/250117-thux-simple-bar-sketchybar.avif",
          "date: '2025-01-16 06:10:00 +0000'",
          "categories:",
          "  - macos",
          "tags:",
          "  - macos",
          "  - tutorial",
          "  - youtube",
          "  - video",
          "---",
          "## Contents",
          "",
          "### Table of contents",
          "",
          "<!-- toc -->",
          "",
          "<!-- tocstop -->",
          "",
          "## YouTube video",
          "",
          "{% include embed/youtube.html id='' %}",
          "",
          "## Pre-requisites",
          "",
          "- List any here",
          "",
          "## If you like my content, and want to support me",
          "",
          "- I create and edit my videos in an M1 mac mini, and it's starting to stay",
          "  behind in the editing side of things, tends to slow me down a bit, I'd like to",
          "  upgrade the machine I use for all my videos to a `mac mini` with these specs:",
          "  - Apple M4 Pro chip with 14‑core CPU, 20‑core GPU, 16-core Neural Engine",
          "  - 24GB unified memory",
          "  - 1TB SSD storage",
          "  - 10 Gigabit Ethernet",
          "- If you want to help me reach my goal, you can",
          '  [donate here](https://ko-fi.com/linkarzu/goal?g=6){:target="_blank"}',
          "",
          '[![Image](../../assets/img/imgs/250103-ko-fi-donate.avif){: width="300" }](https://ko-fi.com/linkarzu/goal?g=6){:target="_blank"}',
          "",
          "## Discord server",
          "",
          "- After following this guide or even watching the related video, you:",
          "  - Have questions related to one of the tools, configs or scripts that I use",
          "  - Would like me to expand a bit more on how something is done",
          "  - Or simply would like to talk and meet other community members that share your same interests",
          "- join the",
          '  [discord server in this link](https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join){:target="_blank"}',
          "- Access to the discord server is only for YouTube community members",
          "",
          "<!-- markdownlint-disable -->",
          "<!-- prettier-ignore-start -->",
          "",
          "<!-- tip=green, info=blue, warning=yellow, danger=red -->",
          "",
          "> I'm opening the discord channel to the public, I think that for at least 3",
          "> months, I'm only accepting a few members at the moment, to get used to things",
          "> and manage it, so if you want to join, **please reach out via one of my social",
          "> media links below and I'll add you** ",
          "{: .prompt-warning }",
          "",
          "<!-- prettier-ignore-end -->",
          "<!-- markdownlint-restore -->",
          "",
          '[![Image](../../assets/img/imgs/250101-discord-server.avif){: width="300" }](https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join){:target="_blank"}',
          "",
          "## Follow me on social media",
          "",
          '- [Twitter (or "X")](https://x.com/link_arzu){:target="_blank"}',
          '- [LinkedIn](https://www.linkedin.com/in/christianarzu){:target="_blank"}',
          '- [TikTok](https://www.tiktok.com/@linkarzu){:target="_blank"}',
          '- [Instagram](https://www.instagram.com/link_arzu){:target="_blank"}',
          '- [GitHub](https://github.com/linkarzu){:target="_blank"}',
          '- [Threads](https://www.threads.net/@link_arzu){:target="_blank"}',
          '- [OnlyFans 🍆](https://linkarzu.com/assets/img/imgs/250126-whyugae.avif){:target="_blank"}',
          '- [YouTube (subscribe MF, subscribe)](https://www.youtube.com/@linkarzu){:target="_blank"}',
          '- [Ko-Fi](https://ko-fi.com/linkarzu/goal?g=6){:target="_blank"}',
          "",
          "## All links in the video description",
          "",
          "- The following links will be in the YouTube video description:",
          "  - Each one of the videos shown",
          "  - A link to this blogpost",
          "",
          "## How do you manage your passwords?",
          "",
          "- I've tried many different password managers in the past, I've switched from `LastPass` to `Dashlane` and finally ended up in `1password`",
          "- You want to find out why? More info in my article:",
          '  - [How I use 1password to keep all my accounts safe](https://linkarzu.com/posts/1password/1password/){:target="_blank"}',
          "",
          '[![Image](../../assets/img/imgs/250124-1password-banner.avif){: width="300" }](https://www.dpbolvw.net/click-101327218-15917064){:target="_blank"}',
          "",
          "---",
          "",
          '[Start your 14 day FREE trial](https://www.dpbolvw.net/click-101327218-15917064){:target="_blank"}',
          "",
          '[![Image](../../assets/img/imgs/250124-1password-banner-bottom.avif){: width="300" }](https://www.dpbolvw.net/click-101327218-15917064){:target="_blank"}',
          "",
        }),
      })
    )

    -- Add a snippet for inserting a video markdown template
    table.insert(
      snippets,
      s({
        trig = "video template",
        name = "Insert video markdown template",
        desc = "Insert video markdown template",
      }, {
        t("## "),
        i(1, "cursor"),
        t(" video"),
        t({ "", "", "All of the details and the demo are covered in the video:", "" }),
        t({ "", "If you don't like watching videos, the keymaps are in " }),
        t("[my dotfiles](https://github.com/linkarzu/dotfiles-latest)"),
        t({
          "",
          "",
          "```txt",
          "Members only discord",
          "https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "",
          "If you find this video helpful and want to support me",
          "https://ko-fi.com/linkarzu",
          "",
          "Follow me on twitter",
          "https://x.com/link_arzu",
          "",
          "My dotfiles (remember to star them)",
          "https://github.com/linkarzu/dotfiles-latest",
          "",
          "Videos mentioned in this video:",
          "",
          "#linkarzu",
          "",
          "1:00 - VIDEO video 1",
          "2:00 - VIDEO video 2",
          "```",
          "",
          "Video timeline:",
          "",
          "```txt",
          "0:00 -",
          "```",
          "",
          "```txt",
          "Members only discord -> https://www.youtube.com/channel/UCrSIvbFncPSlK6AdwE2QboA/join",
          "☕ Support me -> https://ko-fi.com/linkarzu",
          "☑ My Twitter -> https://x.com/link_arzu",
          "❤‍🔥 My tiktok -> https://www.tiktok.com/@linkarzu",
          "```",
          "",
        }),
      })
    )

    -- Basic bash script template
    table.insert(
      snippets,
      s({
        trig = "bashex",
        name = "Basic bash script example",
        desc = "Simple bash script template",
      }, {
        t({
          "```bash",
          "#!/bin/bash",
          "",
          "echo 'helix'",
          "echo 'deeznuts'",
          "```",
          "",
        }),
      })
    )

    -- Basic Python script template
    table.insert(
      snippets,
      s({
        trig = "pythonex",
        name = "Basic Python script example",
        desc = "Simple Python script template",
      }, {
        t({
          "```python",
          "#!/usr/bin/env python3",
          "",
          "def main():",
          "    print('helix dizpython')",
          "",
          "if __name__ == '__main__':",
          "    main()",
          "```",
          "",
        }),
      })
    )

    ls.add_snippets("markdown", snippets)

    -- #####################################################################
    --                         all the filetypes
    -- #####################################################################
    ls.add_snippets("all", {
      s({
        trig = "workflow",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "lam",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "mw25",
        name = "Add this -> lamw25wmal",
        desc = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),
    })

    return opts
  end,
}
