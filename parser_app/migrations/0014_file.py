# Generated by Django 2.2.6 on 2019-10-26 15:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('parser_app', '0013_auto_20190517_0239'),
    ]

    operations = [
        migrations.CreateModel(
            name='File',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(upload_to='')),
            ],
        ),
    ]
