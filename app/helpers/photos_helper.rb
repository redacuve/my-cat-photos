module PhotosHelper
  def create_voting_cookie
    cookies.permanent[:voted] = JSON.generate({})
  end

  def add_to_voting_cookie(value)
    hash = JSON.parse cookies.permanent[:voted]
    hash[value] = true
    cookies.permanent[:voted] = JSON.generate hash
  end

  def exist_voting_cookie?
    cookies.permanent[:voted] ? true : false
  end

  def retrieve_voting_cookie
    create_voting_cookie unless exist_voting_cookie?
    JSON.parse(cookies.permanent[:voted])
  end

  def obtain_voting_hash
    @votes_hash = retrieve_voting_cookie
  end
end
