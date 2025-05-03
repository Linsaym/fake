#!/bin/bash

cd /c/Users/user/fake-commits-2017

# Функция для создания коммита с нужной датой
make_commit() {
    date="$1"
    echo "Commit for $date" >> art.log
    git add art.log
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" \
    git commit -m "Art: $date"
}

# ===== БУКВА "L" (Май 2017) =====
# Май 2017: 1-я неделя (1-7 мая)
make_commit "2017-05-01T12:00:00"  # Пн (1-й день)
make_commit "2017-05-02T12:00:00"  # Вт
make_commit "2017-05-03T12:00:00"  # Ср
make_commit "2017-05-04T12:00:00"  # Чт
make_commit "2017-05-05T12:00:00"  # Пт
# 2-я неделя (8-14 мая)
make_commit "2017-05-12T12:00:00"  # Пт (12-й день)
# 3-я неделя (15-21 мая)
make_commit "2017-05-19T12:00:00"  # Пт (19-й день)
# 4-я неделя (22-28 мая)
make_commit "2017-05-26T12:00:00"  # Пт (26-й день)

# ===== БУКВА "E" (Июнь 2017) =====
make_commit "2017-06-01T12:00:00"  # Верхняя линия
make_commit "2017-06-02T12:00:00"
make_commit "2017-06-03T12:00:00"
make_commit "2017-06-04T12:00:00"
make_commit "2017-06-05T12:00:00"
make_commit "2017-06-08T12:00:00"  # Средняя линия 1
make_commit "2017-06-12T12:00:00"  # Средняя линия 2
make_commit "2017-06-15T12:00:00"  # Нижняя линия
make_commit "2017-06-19T12:00:00"
make_commit "2017-06-20T12:00:00"
make_commit "2017-06-21T12:00:00"
make_commit "2017-06-22T12:00:00"

# ===== БУКВА "V" (Июль 2017) =====
make_commit "2017-07-01T12:00:00"  # Левая диагональ
make_commit "2017-07-05T12:00:00"  # Правая диагональ
make_commit "2017-07-08T12:00:00"  # Левая
make_commit "2017-07-12T12:00:00"  # Правая
make_commit "2017-07-15T12:00:00"  # Левая
make_commit "2017-07-19T12:00:00"  # Правая
make_commit "2017-07-22T12:00:00"  # Левая
make_commit "2017-07-26T12:00:00"  # Правая
make_commit "2017-07-29T12:00:00"  # Левая

# Пушим в репозиторий (используем --force если уже были коммиты)
git remote add origin https://github.com/Linsaym/fake.git
git branch -M main
git push -u origin main --force