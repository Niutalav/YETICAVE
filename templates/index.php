 <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?php foreach ($categories_list as $key => $value):?>
                <li class="promo__item promo__item--boards">
                    <a class="promo__link" href="pages/all-lots.html"><?php print $value ?></a>
                </li><?endforeach;?>
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list"><?php foreach ($name_list as $k => $val) : ?>
            <li class="lots__item lot">
                <div class="lot__image">
                    <img src="img/lot-<?=($k + 1)?>.jpg" width="350" height="260" alt="<?=$val['name']?>">
                </div>
                <div class="lot__info">
                    <span class="lot__category"><?=$categories_list[$val['category']]?></span>
                    <h3 class="lot__title"><a class="text-link" href="lot.html"><?=$val['name']?></a></h3>
                    <div class="lot__state">
                        <div class="lot__rate">
                            <span class="lot__amount">Стартовая цена</span>
                            <span class="lot__cost"><?=sum($val['price'],true)?></span>
                        </div>
                        <div class="lot__timer timer">
                            12:23
                        </div>
                    </div>
                </div>
            </li><?php endforeach; ?>
        </ul>
    </section>
