# iOS6_HomeWork3_5
UITableView, UIScrollView, datasource и delegate часть 1

### Экран 'Log In'
1. Создайте 'ColorSet' используя Hex-code: **#4885CC**
2. Иконку 'VK' скачайте из папки с макетами, файл с именем <b>'Logo.png'</b>
3. Перейдите в папку <b>'Profile'</b> и создайте в ней новый файл <b>'LogInViewController.swift'</b>.
4. В этом файле создайте одноименный класс-наследник <b>'UIViewController'</b>.
5. Теперь при переключении таба <b>'Profile'</b> в TabBar должен открываться экран <b>'LogInViewController.swift'</b>
6. Скройте NavigationBar, используя `navigationBar.isHidden = true`
7. В классе <b>'LogInViewController'</b> у вас должна быть реализована верстка экрана "Log In" согласно макету <b>'Lesson_6_Layout_1.png'</b>. Верстку нужно выполнить кодом  используя AutoLayout.
8. Вам нужно учесть тот факт, что диагональ устройства может быть разной, клавиатура может перекрывать поля ввода, поэтому используйте <b>UIScrollView</b>, по аналогии с примером из лекции.
9. Поле 'password' должно скрывать введенные данные, как показано в макете <b>'Lesson_6_Layout_1_typing.png'</b>.
10. Обработайте появление и исчезновение клавиатуры, используя код из лекции.
11. Кнопка 'Log In' независимо от введенных данных должна отправлять юзера на экран профиля - <b>'ProfileViewController'</b>.
12. Чтобы "покрасить" кнопку 'Log In' в соответствии с макетом, используйте изображение **blue_pixel.png**, который также находится в папке [Макеты], файл с именем <b>'Logo.png'</b>
