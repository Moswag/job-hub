"""resume_parser.parser_app URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, include

from parser_app.views import FileUploadView
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('user/details/<pk>/', views.user_detail),
    path('job_recommendation/', views.job_recommendation),
    # path('hello/', views.TestView.as_view(), name='hello'),
    path('upload_resume/', views.upload_resume, name='upload_resume'),
    path('/homepage', views.homepage, name='homepage'),

    path('', views.index, name='index'),
    path('signin', views.login, name='signin'),
    path('logout', views.logout_view, name='logout'),
    path('register/', views.register, name='register'),
    path('signup', views.saveUser, name='signup'),



    # admin

    path('add_admin/', views.addAdmin, name='add_admin'),
    path('save_admin/', views.saveAdmin, name='save_admin'),
    path('view_admins/', views.viewAdmins, name='view_admins'),

    path('add_job/', views.addJob, name='add_job'),
    path('save_job/', views.saveJob, name='save_job'),
    path('view_jobs/', views.viewJobs, name='view_jobs'),
    path('view_applications/<str:job_id>/', views.viewApplications, name='view_applications'),
    path('view_application_jobs/', views.viewApplicationJobs, name='view_application_jobs'),


    # applicant
    path('a_view_jobs/', views.viewApplicantJobs, name='a_view_jobs'),
    path('apply/<int:job_id>/', views.apply, name='apply'),
    path('my_applications/', views.viewMyApplications, name='my_applications'),


    path('upload/', FileUploadView.as_view())

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
