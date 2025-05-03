#!/bin/bash

# Переходим в папку проекта
cd /c/Users/user/fake-commits-2017

# Функция для создания коммита с нужной датой
make_commit() {
    date="$1"
    echo "Commit for $date" >> art.log
    git add art.log
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" \
    git commit -m "Art: $date" --quiet
}

# ===== БУКВА "L" (Май 2018) =====
make_commit "2018-05-07T12:00:00"  # 7
make_commit "2018-05-08T12:00:00"  # 8
make_commit "2018-05-09T12:00:00"  # 9
make_commit "2018-05-10T12:00:00"  # 10
make_commit "2018-05-11T12:00:00"  # 11
make_commit "2018-05-18T12:00:00"  # 18
make_commit "2018-05-25T12:00:00"  # 25

# ===== БУКВА "E" (Июнь 2018) =====
make_commit "2018-06-04T12:00:00"  # 4
make_commit "2018-06-05T12:00:00"  # 5
make_commit "2018-06-06T12:00:00"  # 6
make_commit "2018-06-07T12:00:00"  # 7
make_commit "2018-06-08T12:00:00"  # 8
make_commit "2018-06-11T12:00:00"  # 11
make_commit "2018-06-13T12:00:00"  # 13
make_commit "2018-06-15T12:00:00"  # 15
make_commit "2018-06-18T12:00:00"  # 18
make_commit "2018-06-20T12:00:00"  # 20
make_commit "2018-06-22T12:00:00"  # 22

# ===== БУКВА "V" (Июль 2018) =====
make_commit "2018-07-02T12:00:00"  # 2
make_commit "2018-07-03T12:00:00"  # 3
make_commit "2018-07-04T12:00:00"  # 4
make_commit "2018-07-12T12:00:00"  # 12
make_commit "2018-07-20T12:00:00"  # 20
make_commit "2018-07-26T12:00:00"  # 26
make_commit "2018-07-30T12:00:00"  # 30
make_commit "2018-07-31T12:00:00"  # 31

# ===== ДОПОЛНИТЕЛЬНАЯ ТОЧКА (Август 2018) =====
make_commit "2018-08-01T12:00:00"  # 1

# Пушим изменения (используем --force если уже были коммиты)
git remote add origin https://github.com/Linsaym/fake.git
git branch -M main
git push -u origin main --force