package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: GuestSession.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends m<com.twitter.sdk.android.core.internal.oauth.a> {

    /* JADX INFO: compiled from: GuestSession.java */
    public static class a implements e9.d<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.gson.f f27424a = new com.google.gson.g().c(com.twitter.sdk.android.core.internal.oauth.a.class, new b()).b();

        @Override // e9.d
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public e a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (e) this.f27424a.k(str, e.class);
            } catch (Exception e10) {
                o.g().c("Twitter", "Failed to deserialize session " + e10.getMessage());
                return null;
            }
        }

        @Override // e9.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String b(e eVar) {
            if (eVar == null || eVar.a() == null) {
                return BuildConfig.FLAVOR;
            }
            try {
                return this.f27424a.t(eVar);
            } catch (Exception e10) {
                o.g().c("Twitter", "Failed to serialize session " + e10.getMessage());
                return BuildConfig.FLAVOR;
            }
        }
    }

    public e(com.twitter.sdk.android.core.internal.oauth.a aVar) {
        super(aVar, 0L);
    }
}
