package com.twitter.sdk.android.core.services;

import g9.a;
import wa.b;
import ya.f;
import ya.t;

/* JADX INFO: loaded from: classes2.dex */
public interface SearchService {
    @f("/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Object> tweets(@t("q") String str, @t(encoded = true, value = "geocode") a aVar, @t("lang") String str2, @t("locale") String str3, @t("result_type") String str4, @t("count") Integer num, @t("until") String str5, @t("since_id") Long l10, @t("max_id") Long l11, @t("include_entities") Boolean bool);
}
