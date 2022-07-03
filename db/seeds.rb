# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
todo_lists = TodoList.create([
    {
        title: "Семья"
    },
    {
        title: "Работа"
    },
    {
        title: "Прочее"
    }
])

Todo.create([
    {
        text: "Купить молоко",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Купить молоко",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Заменить масло в двигателе до 23 апреля",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Отправить письмо бабушке",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Заплатить за квартиру",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Забрать обувь из ремонта",
        isCompleted: false,
        todo_list: todo_lists.first
    },
    {
        text: "Позвонить заказчику",
        isCompleted: true,
        todo_list: todo_lists.second
    },
    {
        text: "Отправить документы",
        isCompleted: true,
        todo_list: todo_lists.second
    },
    {
        text: "Заполнить отчет",
        isCompleted: false,
        todo_list: todo_lists.second
    },
    {
        text: "Позвонить другу",
        isCompleted: false,
        todo_list: todo_lists.third
    },
    {
        text: "Подготовиться к поездке",
        isCompleted: false,
        todo_list: todo_lists.third
    }
])