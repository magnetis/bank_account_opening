import Config

if config_env() == :dev do
  config :bank_account_opening, BankAccountOpening.Repo,
    url: System.get_env("DATABASE_URL", "postgres://postgres:@db/bank_account_opening_dev")
end
