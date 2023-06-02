from django.urls import path
from .views import HomePageView, RegolePageView

urlpatterns = [
    path("", HomePageView.as_view(), name="home"),
    path("regole", RegolePageView.as_view(), name="regole"),

]