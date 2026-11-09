# Cairo Labs Skills

Skills I use every day to work with AI, cleaned up so you can use them too.

A skill is a short instruction file your AI reads before it does a certain kind of task. Write the rule once, and the AI follows it every time. Each skill here started as a correction I got tired of repeating.

**They work with any AI, not just Claude.** A skill is just a set of written rules. Share one with your AI of choice and ask it to fit the skill to you; it will help you edit and revise it until the rules are yours.

Mike Landry, [Cairo Labs](https://cairolabs.ai)

## The skills

| Skill | What it does | The story |
|---|---|---|
| [brief-me](plugins/brief-me/skills/brief-me/SKILL.md) | Makes your AI report like a good chief of staff: verdict first, one decision at a time, no narration of its homework. | [I Taught My AI to Brief Me Like a CEO](https://cairoglyphics.ai/posts/brief-me-like-a-ceo/) |
| [handoff](plugins/handoff/skills/handoff/SKILL.md) | Pass work from one AI chat to the next without re-explaining: a self-contained note on the way out, a quick check-and-archive on the way in. | [Skill "Handoff": Starting a Fresh Chat Without Starting Over](https://cairoglyphics.ai/posts/handoff-fresh-chat-without-starting-over/) |
| [tldr](plugins/tldr/skills/tldr/SKILL.md) | One command to take stock of a chat: a quick status that keeps the chat open, or a clean close-out that leaves nothing behind. | [Skill "TLDR": One Command to Check In On a Chat or Close It Out](https://cairoglyphics.ai/posts/tldr-status-or-close/) |

More are on the way.

## How to use them

**Claude Code:** add this repo as a plugin marketplace, then install the skill you want.

```
/plugin marketplace add Cairo-Labs/skills
/plugin install brief-me@cairo-skills
/plugin install handoff@cairo-skills
/plugin install tldr@cairo-skills
```

**Claude (web, desktop or mobile app):** download the skill's zip from the [Releases](https://github.com/Cairo-Labs/skills/releases) page, then upload it in the Claude app's Skills settings.

**ChatGPT, Gemini or any other AI:** open the skill's `SKILL.md`, copy everything below the top block (the lines between the `---` markers), and paste it into your custom instructions or a project's instructions.

## Make it yours

These are written for how I work. Change the first few lines to say who you are and how you read (phone, laptop, between meetings), and add your own rules. The best ones come from the next time an answer annoys you.

## License

MIT. Use them, change them, share them.
