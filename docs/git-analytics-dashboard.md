# Git Analytics and Reporting Dashboard

We use GitHub/GitLab API to extract data and visualize it on dashboards.

## Tracked Metrics
- Pull Request Size
- Time to first review
- Time to merge
- Lead time for changes
- Review iteration count

## Dashboards
Set up a Grafana instance pointing to our extracted Git metrics database to view trends over time.

## Alerts
- Alerts on PRs open > 5 days (Slack notification)
- Alerts on large PRs (>500 lines)

_Auto-generated reports are sent weekly to the engineering mailing list._
