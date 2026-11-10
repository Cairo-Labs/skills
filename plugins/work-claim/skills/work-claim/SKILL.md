---
name: work-claim
description: Stop two AI chats or agents from doing the same job at once. Before starting real work, check a shared claims list and claim the task; release it with the outcome when done.
---

# Work claim

When I run more than one AI chat or agent at a time, two of them can pick up the same task and build it twice. A claim is a sign on the door: "I'm working on this." Check for one before you start, put one up when you start, and take it down when you're done.

## When to claim

Before you start real work on a specific task: writing or editing files, running a build, or anything that takes more than a few minutes. Reading, searching and answering questions don't need a claim.

## Where claims live

A shared file every chat and agent can read and write, for example `claims.md` in the project folder (or wherever I tell you). One line per claim:

`<task name> | held by <who> | started <date time> | expires <date time> | <what it's for> | touches <files or areas>`

If you can't read or write the shared file, tell me. Don't skip the claim quietly.

## The steps

1. **Name the task the way anyone would.** Use the bug number, the to-do item, or a short plain name another chat would pick for the same work. "pricing-page-update" and "website-prices" won't match each other, and that defeats the point.
2. **Check first.** Read the claims list.
   - **Nobody holds it:** add your claim and start.
   - **Someone else holds it and it hasn't expired:** stop. Don't start. Tell me who holds it, and work on something else or ask me what to do.
   - **You couldn't check** (the file is missing, locked or unreadable): stop. "Couldn't check" is not the same as "nobody has it." Tell me.
3. **Say what you'll touch.** If another claim lists the same files or areas, mention it before you start, even when the task names differ.
4. **Keep it fresh.** A claim expires (default: one hour). For longer work, update the expiry before it runs out. If yours expired and someone else took the task, stop: it's theirs now.
5. **Release it with the outcome.** When you finish, or stop, remove your claim and record one line on what happened ("done, saved in pricing.html" or "stopped, blocked on login").

## Rules

- Never remove someone else's claim to get unstuck. A live claim in your way is a question for me, not a lock to break. Only clear a claim that's clearly dead (expired, its chat closed) and say so when you do.
- If you skipped the claim and started anyway, tell me. A collision found later costs more than admitting the shortcut.
