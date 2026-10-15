package com.twitter.sdk.android.core;

import android.text.TextUtils;

/* JADX INFO: compiled from: TwitterApiException.java */
/* JADX INFO: loaded from: classes2.dex */
public class q extends y {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final f9.a f27496o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z f27497p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f27498q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final wa.l f27499r;

    public q(wa.l lVar) {
        this(lVar, c(lVar), d(lVar), lVar.b());
    }

    static String a(int i10) {
        return "HTTP request failed, Status: " + i10;
    }

    static f9.a b(String str) {
        try {
            f9.b bVar = (f9.b) new com.google.gson.g().d(new f9.l()).d(new f9.m()).b().k(str, f9.b.class);
            if (bVar.f29519a.isEmpty()) {
                return null;
            }
            return bVar.f29519a.get(0);
        } catch (com.google.gson.u e10) {
            o.g().b("Twitter", "Invalid json: " + str, e10);
            return null;
        }
    }

    public static f9.a c(wa.l lVar) {
        try {
            String strO = lVar.d().source().B().clone().o();
            if (TextUtils.isEmpty(strO)) {
                return null;
            }
            return b(strO);
        } catch (Exception e10) {
            o.g().b("Twitter", "Unexpected response", e10);
            return null;
        }
    }

    public static z d(wa.l lVar) {
        return new z(lVar.e());
    }

    q(wa.l lVar, f9.a aVar, z zVar, int i10) {
        super(a(i10));
        this.f27496o = aVar;
        this.f27497p = zVar;
        this.f27498q = i10;
        this.f27499r = lVar;
    }
}
