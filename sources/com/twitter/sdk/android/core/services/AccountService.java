package com.twitter.sdk.android.core.services;

import f9.p;
import wa.b;
import ya.f;
import ya.t;

/* JADX INFO: loaded from: classes2.dex */
public interface AccountService {
    @f("/1.1/account/verify_credentials.json")
    b<p> verifyCredentials(@t("include_entities") Boolean bool, @t("skip_status") Boolean bool2, @t("include_email") Boolean bool3);
}
