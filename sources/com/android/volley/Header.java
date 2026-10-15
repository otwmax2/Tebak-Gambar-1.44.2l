package com.android.volley;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class Header {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5088b;

    public Header(String str, String str2) {
        this.f5087a = str;
        this.f5088b = str2;
    }

    public final String a() {
        return this.f5087a;
    }

    public final String b() {
        return this.f5088b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Header.class != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f5087a, header.f5087a) && TextUtils.equals(this.f5088b, header.f5088b);
    }

    public int hashCode() {
        return (this.f5087a.hashCode() * 31) + this.f5088b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f5087a + ",value=" + this.f5088b + "]";
    }
}
