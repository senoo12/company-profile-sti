from django.shortcuts import render, redirect
from django.views import View
from product.models import *
from django.shortcuts import get_object_or_404

# Create your views here.
class IndexView(View):
    def get(self, request):
        category = Category.objects.all()
        project = Project.objects.all()
        content = {
            'projects': project,
            'categories': category
        }
        return render(request, 'pages/index.html', content)

class ProjectView(View):
    def get(self, request):
        category_name = request.GET.get('category', None)
        categories = Category.objects.all()
        if category_name:
            selected_category = get_object_or_404(Category, name_of_category=category_name)
            projects = Project.objects.filter(category=selected_category)
        else:
            projects = Project.objects.all()

        content = {
           'categories': categories,
            'projects': projects,
            'selected_category': category_name,
        }
        return render(request, 'pages/project.html', content)

class AboutView(View):
    def get(self, request):
        return render(request, 'pages/about.html')

class ContactView(View):
    def post(self, request):
        if request.method == "POST":
            first_name = request.POST['first_name']
            last_name = request.POST['last_name']
            email = request.POST['email']
            phone_number = request.POST['phone_number']
            name_of_organization = request.POST['name_of_organization']
            message = request.POST['message']
            service_category_id = request.POST['service_category_id']
            obj=Collaboration.objects.create(
                first_name=first_name, 
                last_name=last_name, 
                email=email, 
                phone_number=phone_number, 
                name_of_organization=name_of_organization, 
                message=message, 
                service_category_id=service_category_id
            )
        obj.save()
        return redirect('/')

    def get(self, request):
        categories = Category.objects.all()
        content = {
            'categories': categories
        }
        return render(request, 'pages/contact.html', content)