from django.db import models

# Create your models here.
class Category(models.Model):
    name_of_category = models.CharField(max_length=50)

    class Meta:
        db_table = 'category'

    def __str__(self):
        return self.name_of_category

class Project(models.Model):
    title = models.CharField(max_length=100)
    description = models.CharField(max_length=200)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    url = models.CharField(max_length=200)
    foto = models.ImageField(max_length=100, null=True, default=False, upload_to='media/content/')

    class Meta:
        db_table = 'project'

class Collaboration(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    email = models.EmailField(max_length=100)
    phone_number = models.CharField(max_length=20)
    name_of_organization = models.CharField(max_length=150)
    message = models.CharField(max_length=200)
    service_category = models.ForeignKey(Category, on_delete=models.CASCADE)

    def __str__(self):
        return super().__str__()

    class Meta:
        db_table = 'collaboration'