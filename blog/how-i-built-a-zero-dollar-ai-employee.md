---
title: How I Built a Zero-Dollar AI Employee
published: true
tags: ai, automation, productivity, openai
---

> *Stop paying £20/month for AI tools. This is how I replaced them with a free autonomous agent running on a £4 server.*

---

## The Problem I Had

Every month I was paying:
- £20 for ChatGPT Plus
- £15 for some content tool
- £10 for an email automation SaaS

Total: £45/month for things an autonomous agent could do for free.

Then I found OpenClaw.

---

## What is OpenClaw?

OpenClaw is a free, self-hosted AI agent framework. You run it on your own server. You connect it to a free AI model. You give it a personality and a mission. It works 24/7 without you.

The stack:
- **OpenClaw** — the agent framework (free, open source)
- **Gemini Flash** — the AI brain (free tier: 1,500 requests/day)
- **Hostinger VPS** — the server (£4/month)
- **n8n** — the automation layer (free, self-hosted)
- **Telegram** — the reporting channel (free)

Total monthly cost: **£4**.

---

## The Setup (Under 30 Minutes)

### Step 1: Get a VPS

Sign up at [hostinger.com](https://hostinger.com). Choose the KVM2 plan at £3.99/month. Select Ubuntu 24.04.

### Step 2: Install OpenClaw

SSH into your server and run:

```bash
docker run -it --pull=always \
  -v openclaw-data:/data \
  ghcr.io/openclaw/openclaw:latest
```

### Step 3: Connect Gemini (Free)

Go to [aistudio.google.com](https://aistudio.google.com). Create a free API key. Paste it into OpenClaw settings. You now have 1,500 free AI requests per day — enough for 3 bots running on a schedule.

### Step 4: Give It a Soul

This is the clever part. You create a `SOUL.md` file — a plain English document that tells your agent who it is and what its mission is.

Here is the one I use for my marketing bot:

```markdown
# SOUL.md — HAWKER
You are HAWKER — autonomous marketing agent for AiFusionX.
Mission: Promote https://clickingdee.gumroad.com/l/dgcnmg daily.
- Post 3 viral tweets at 8am, 1pm, 6pm
- Find Reddit threads about AI automation and add genuine value
- Report results to Telegram when done
```

That is it. The agent reads this file and knows exactly what to do.

### Step 5: Connect Telegram

Open Telegram, search for @BotFather, type `/newbot`, follow the steps. Copy your bot token into OpenClaw. Now your agent sends you a daily report on your phone.

---

## What My Bots Do Every Day

I run 6 bots. Each has its own soul and mission:

| Bot | Job |
|-----|-----|
| SCRIBE | Writes content — blogs, tweets, product descriptions |
| HAWKER | Promotes products on Twitter and Reddit |
| WEAVER | Builds n8n automation workflows |
| COURIER | Handles customer emails and onboarding |
| LEDGER | Tracks Gumroad sales, reports to Telegram at 7am |
| SENTRY | Monitors system health, alerts me if anything breaks |

While I sleep, these 6 bots are working.

---

## The Results So Far

I will not lie and say I am making £10,000/month. I am not. This is early days.

But here is what is real:
- First Gumroad sale came in on a day I did nothing
- GitHub repo hit organic traffic within 48 hours of going live
- Cost went from £45/month to £4/month

The system works. It just needs time and consistency.

---

## Want the Full Blueprint?

I documented the entire setup — every step, every SOUL template, every n8n workflow — in a guide.

**[The Starter Protocol — £9](https://clickingdee.gumroad.com/l/dgcnmg)**
The exact blueprint. No fluff.

**[The Executive Kit — £27](https://clickingdee.gumroad.com/l/eibbyk)**
Full guide + n8n workflow templates + priority support.

Or grab the **[free setup checklist](https://clickingdee.gumroad.com/l/dgcnmg)** and start today.

---

The full SOUL templates and quickstart scripts are also on GitHub:
[github.com/thenicheacademy/openclaw-zero-dollar-employee](https://github.com/thenicheacademy/openclaw-zero-dollar-employee)

---

*Built by AiFusionX. Follow the journey: [@AXBotAiFusionX](https://twitter.com/AXBotAiFusionX)*
