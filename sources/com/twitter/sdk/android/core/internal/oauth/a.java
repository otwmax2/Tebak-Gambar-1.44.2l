package com.twitter.sdk.android.core.internal.oauth;

/* JADX INFO: compiled from: GuestAuthToken.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @b7.c("guest_token")
    private final String f27460r;

    public a(String str, String str2, String str3) {
        super(str, str2);
        this.f27460r = str3;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.e
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.f27460r;
        String str2 = ((a) obj).f27460r;
        return str == null ? str2 == null : str.equals(str2);
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.e
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.f27460r;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String v() {
        return this.f27460r;
    }

    public boolean w() {
        return System.currentTimeMillis() >= this.f27418o + 10800000;
    }
}
