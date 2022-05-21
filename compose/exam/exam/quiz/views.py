from django.http import HttpResponse
from django.views.generic import View


class QuizView(View):
    def get(self, request, *args, **kwargs):
        response = 'ok'
        return HttpResponse(response)
