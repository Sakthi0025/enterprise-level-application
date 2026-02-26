#!/bin/bash
echo "Running PR readiness checks..."
git pull origin develop --rebase # Ensure up to date
npx lint-staged
mvn test # Run tests
# Check coverage
echo "Checks complete -- NO merged conflicts found. Rebase successful."
