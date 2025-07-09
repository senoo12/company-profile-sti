from django.contrib import admin
from product.models import *

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name_of_category')

admin.site.register(Category, CategoryAdmin)

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'description', 'category', 'url', 'foto')

admin.site.register(Project, ProjectAdmin)

class CollaborationAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'email', 'phone_number', 'name_of_organization', 'message', 'service_category')

admin.site.register(Collaboration, CollaborationAdmin)