Rails.configuration.stripe = {
  :publishable_key => "pk_test_7Cvqy6BCqXvx4h5qw6n8tzJd",
  :secret_key      => "sk_test_JjNWw1SzhwUCZjOA5pmvEY8b"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
