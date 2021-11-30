(defun code-review-gitlab--graphql (graphql variables callback)
  (glab-request "POST" "/graphql" nil :payload (json-encode
                                                `(("query" . ,graphql)
                                                  ,@(and variables `(("variables" ,@variables)))))
                                    (throw 'gitlab-comment-without-line-number
                                           "Review Comment
         (query
          (format "query{
}
" (format "%s/%s" owner repo) number)))
    (code-review-gitlab--graphql
     query
     nil
     callback)))