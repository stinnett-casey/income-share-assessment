              Prefix Verb   URI Pattern                                        Controller#Action
          submission POST   /submit(.:format)                                  submits#index
    question_answers GET    /questions/:question_id/answers(.:format)          answers#index
                     POST   /questions/:question_id/answers(.:format)          answers#create
 new_question_answer GET    /questions/:question_id/answers/new(.:format)      answers#new
edit_question_answer GET    /questions/:question_id/answers/:id/edit(.:format) answers#edit
     question_answer GET    /questions/:question_id/answers/:id(.:format)      answers#show
                     PATCH  /questions/:question_id/answers/:id(.:format)      answers#update
                     PUT    /questions/:question_id/answers/:id(.:format)      answers#update
                     DELETE /questions/:question_id/answers/:id(.:format)      answers#destroy
           questions GET    /questions(.:format)                               questions#index
                     POST   /questions(.:format)                               questions#create
        new_question GET    /questions/new(.:format)                           questions#new
       edit_question GET    /questions/:id/edit(.:format)                      questions#edit
            question GET    /questions/:id(.:format)                           questions#show
                     PATCH  /questions/:id(.:format)                           questions#update
                     PUT    /questions/:id(.:format)                           questions#update
                     DELETE /questions/:id(.:format)                           questions#destroy
                root GET    /                                                  questions#index
