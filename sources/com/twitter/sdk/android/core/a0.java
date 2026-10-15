package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: TwitterSession.java */
/* JADX INFO: loaded from: classes2.dex */
public class a0 extends m<t> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @b7.c("user_name")
    private final String f27419c;

    /* JADX INFO: compiled from: TwitterSession.java */
    static class a implements e9.d<a0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.gson.f f27420a = new com.google.gson.f();

        a() {
        }

        @Override // e9.d
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a0 a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (a0) this.f27420a.k(str, a0.class);
            } catch (Exception e10) {
                o.g().c("Twitter", e10.getMessage());
                return null;
            }
        }

        @Override // e9.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String b(a0 a0Var) {
            if (a0Var == null || a0Var.a() == null) {
                return BuildConfig.FLAVOR;
            }
            try {
                return this.f27420a.t(a0Var);
            } catch (Exception e10) {
                o.g().c("Twitter", e10.getMessage());
                return BuildConfig.FLAVOR;
            }
        }
    }

    public a0(t tVar, long j10, String str) {
        super(tVar, j10);
        this.f27419c = str;
    }

    public String c() {
        return this.f27419c;
    }

    @Override // com.twitter.sdk.android.core.m
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.f27419c;
        String str2 = ((a0) obj).f27419c;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // com.twitter.sdk.android.core.m
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.f27419c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
