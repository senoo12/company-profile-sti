# Generated by Django 5.0 on 2024-12-29 02:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0005_category_foto_alter_project_foto'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='category',
            name='foto',
        ),
    ]
