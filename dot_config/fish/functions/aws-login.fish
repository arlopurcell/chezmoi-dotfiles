function aws-login
  set envs dev prd phi
  set choice (printf %s\n $envs | fzf)
  set profile (__aws_profile_for_env $choice)

  # check if already logged in
  if not aws sts get-caller-identity --profile $profile &> /dev/null
    echo "Logging into AWS profile $profile..."
    aws sso login --profile platform-dev
  else
    echo "Already logged into AWS profile $profile"
  end

  # export credential variables
  eval $(aws configure export-credentials --format env --profile $profile)
end

function __aws_profile_for_env
  switch $argv[1]
    case dev
      printf platform-dev
    case prd
      printf iterativescopes
    case phi
      printf iterativescopes-phi
  end
end
