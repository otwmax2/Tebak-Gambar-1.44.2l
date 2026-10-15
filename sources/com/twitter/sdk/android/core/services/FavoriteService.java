package com.twitter.sdk.android.core.services;

import f9.n;
import java.util.List;
import wa.b;
import ya.c;
import ya.e;
import ya.f;
import ya.o;
import ya.t;

/* JADX INFO: loaded from: classes2.dex */
public interface FavoriteService {
    @o("/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    b<n> create(@c("id") Long l10, @c("include_entities") Boolean bool);

    @o("/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    @e
    b<n> destroy(@c("id") Long l10, @c("include_entities") Boolean bool);

    @f("/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<n>> list(@t("user_id") Long l10, @t("screen_name") String str, @t("count") Integer num, @t("since_id") String str2, @t("max_id") String str3, @t("include_entities") Boolean bool);
}
