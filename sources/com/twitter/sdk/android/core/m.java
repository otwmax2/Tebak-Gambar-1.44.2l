package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.a;

/* JADX INFO: compiled from: Session.java */
/* JADX INFO: loaded from: classes2.dex */
public class m<T extends a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @b7.c("auth_token")
    private final T f27484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @b7.c("id")
    private final long f27485b;

    public m(T t10, long j10) {
        if (t10 == null) {
            throw new IllegalArgumentException("AuthToken must not be null.");
        }
        this.f27484a = t10;
        this.f27485b = j10;
    }

    public T a() {
        return this.f27484a;
    }

    public long b() {
        return this.f27485b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f27485b != mVar.f27485b) {
            return false;
        }
        T t10 = this.f27484a;
        T t11 = mVar.f27484a;
        return t10 != null ? t10.equals(t11) : t11 == null;
    }

    public int hashCode() {
        T t10 = this.f27484a;
        int iHashCode = t10 != null ? t10.hashCode() : 0;
        long j10 = this.f27485b;
        return (iHashCode * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }
}
