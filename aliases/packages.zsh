alias npm="npm -d"
alias nx="npx nx"
alias npm-clear="rm -rf ~/.npm"
alias nr="npm run"
alias npmi="rm -rf $HOME/.npm node_modules/ && npm i"
alias yarni="rm -rf $HOME/.yarn/berry/ $HOME/.cache/yarn node_modules && yarn"
alias precommit="rm -rf node_modules && npm ci && npm run typecheck && npm run test && npm run build && npm run start"
alias precommit-pnpm="rm -rf node_modules && pnpm i && pnpm run typecheck && pnpm run test && pnpm run build && pnpm run start"

alias br="bun run"
alias bi="bun install"
