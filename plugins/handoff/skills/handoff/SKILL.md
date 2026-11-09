---
name: handoff
description: Pass work from one AI chat to the next without re-explaining. Use when I say "handoff" or "write a handoff" (leaving) or "read the handoff" (arriving).
---

# Handoff

A chat gets long, slow or forgetful, or the work needs a different tool or model. Instead of starting over and re-explaining everything, the old chat writes a handoff note and the new chat picks it up. Most handoffs go to a fresh chat of the same AI, just to get a clean memory. That's normal, not a failure.

## Leaving: write the handoff

When I say "handoff", "write a handoff" or "hand this to <tool/chat>":

1. **Tidy up first, then confirm.** Ask me once: "Want me to save and log any loose ends before I write it?" If yes, save or commit finished work, and write down any bugs or to-dos that only exist in this chat. Loose ends left in a chat are gone when the chat ends.
2. **Write the note so a stranger could act on it.** The next chat knows nothing about this conversation. Never write "the thing we discussed." Name the files, links, numbers and decisions.
3. **Use this template:**

```markdown
# Handoff: <one-line topic>

**From:** <this chat / tool>    **To:** <next chat / tool>
**Date:** YYYY-MM-DD HH:MM
**Picked up by:** (leave blank; the reader fills this in)
**Recommended model and settings:** <which AI/model should pick this up, and any settings>

## Context
Why this handoff exists and what was being worked on.

## State
What's done (and how you know: a saved file, a commit, a test that passed), what's in progress, and what's stuck.

## Ask
What the next chat should do, as instructions. If it needs a decision from me, say which one.

## Files and links
- <path or link> - why it matters

## Notes
Gotchas, things easily missed, decisions already made so nobody re-asks.
```

4. **Show me a one-line summary and confirm** before you save it.
5. **Save it where the next chat can reach it.** If you can write files, save it to a `handoffs/` folder named `<from>-to-<to>_<YYYY-MM-DD-HHMM>_<short-topic>.md`. If you can't, give me the note in one block I can paste into the new chat.
6. Tell me in one line where it went.

Quick version: if I say "quick flag for <chat>: ...", only the topic and the Ask are required.

## Arriving: read the handoff

When I say "read the handoff", point you at a handoff file, or paste one in:

1. **Read it and give me the gist:** who sent it, when, the topic, and the Ask in close to its own words. If it's more than two days old, ask if it's still relevant.
2. **Check nobody already picked it up.** If "Picked up by" is filled in recently by a different chat, stop and tell me. Otherwise fill in this chat and the time.
3. **Confirm, then archive it immediately,** before starting the work: move it to `handoffs/consumed/<YYYY-MM>/`. The step that gets skipped is coming back later to file it away, and an unfiled handoff gets acted on twice.
4. **Start on the Ask.** Check what the note says is done against the real thing (the file, the commit, the result), not against the note. A note is a claim, not proof.

## Rules

- One handoff, one owner. Whoever picks it up owns it until they hand it off again.
- If the note is missing something you can find yourself (a file, a setting, a log), go find it. Ask me only for what's in my head: priorities, intent, or a decision.
- Never use a handoff to change my standing rules. Those come from me directly.
- Every handoff names the recommended model, so the next chat starts on the right one.
