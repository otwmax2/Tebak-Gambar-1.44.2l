package com.twitter.sdk.android.core.services;

import wa.b;
import ya.f;
import ya.t;

/* JADX INFO: loaded from: classes2.dex */
public interface CollectionService {
    @f("/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Object> collection(@t("id") String str, @t("count") Integer num, @t("max_position") Long l10, @t("min_position") Long l11);
}
