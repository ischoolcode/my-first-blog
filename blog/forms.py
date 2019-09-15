from django.contrib.auth.forms import AuthenticationForm
from django import forms
from .models import Post, Comment
from django.contrib.auth.models import User

class PostForm(forms.ModelForm):
    class Meta:
       model = Post
       fields = ('title', 'text',)

class LoginForm(AuthenticationForm):
    username = forms.CharField(label="用户名", max_length=120,
                                widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'username'}))
    password = forms.CharField(label="密码", max_length=120,
                               widget=forms.TextInput(attrs={'type': 'password', 'name': 'password', 'class': 'form-control'}))


class RegistrationForm(forms.ModelForm):
    password = forms.CharField(label="密码", widget=forms.PasswordInput)
    password2 = forms.CharField(label="确认密码", widget=forms.PasswordInput)

    class Meta:
       model = User
       fields = ("username", "email")

    def clean_password2(self):
       cd = self.cleaned_data
       if cd['password'] != cd['password2']:
          raise forms.ValidationError('两次输入的密码不匹配')
       return cd['password2']

class CommentForm(forms.ModelForm):
    class Meta:
       model = Comment
       fields = ('author', 'text',)
