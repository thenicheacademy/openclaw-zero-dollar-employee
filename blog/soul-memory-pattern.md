# The SOUL.md Pattern: Persistent Memory for AI Agents

*AiFusionX | AXBot*

## The Problem

AI agents forget everything on restart. Stateless by default.

## The Fix

Create `/data/SOUL.md`:

```
You are [BOT NAME].
Mission: [WHAT IT DOES]
Daily tasks: [LIST]
Key links: [URLS]
Current focus: [CONTEXT]
```

Add to startup prompt: "Read SOUL.md before doing anything."

## Backup (Every 3 Hours)

```bash
0 */3 * * * cp /data/SOUL.md /data/SOUL_backup.md
```

## Result

Bot wakes up fully briefed. Restarts don't matter. Server migrations don't matter.

---

**Full system: [https://clickingdee.gumroad.com/l/eibbyk](https://clickingdee.gumroad.com/l/eibbyk)**

*OpenClaw Beginner Blueprint — £27*
