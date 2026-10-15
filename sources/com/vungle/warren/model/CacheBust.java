package com.vungle.warren.model;

import b7.c;
import com.facebook.internal.security.CertificateUtil;
import com.google.gson.g;
import com.google.gson.o;
import com.vungle.warren.model.CacheBustDBAdapter;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class CacheBust {
    public static final int EVENT_TYPE_CAMPAIGN = 1;
    public static final int EVENT_TYPE_CREATIVE = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @c("id")
    String f28143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @c("timestamp_bust_end")
    long f28144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @EventType
    int f28145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String[] f28146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @c(CacheBustDBAdapter.CacheBustColumns.COLUMN_TIMESTAMP_PROCESSED)
    long f28147e;

    public @interface EventType {
    }

    public static CacheBust fromJson(o oVar) {
        return (CacheBust) new g().b().g(oVar, CacheBust.class);
    }

    public String calculateId() {
        return this.f28143a + CertificateUtil.DELIMITER + this.f28144b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CacheBust cacheBust = (CacheBust) obj;
        return this.f28145c == cacheBust.f28145c && this.f28147e == cacheBust.f28147e && this.f28143a.equals(cacheBust.f28143a) && this.f28144b == cacheBust.f28144b && Arrays.equals(this.f28146d, cacheBust.f28146d);
    }

    public String[] getEventIds() {
        return this.f28146d;
    }

    public String getId() {
        return this.f28143a;
    }

    public int getIdType() {
        return this.f28145c;
    }

    public long getTimeWindowEnd() {
        return this.f28144b;
    }

    public long getTimestampProcessed() {
        return this.f28147e;
    }

    public int hashCode() {
        return (Objects.hash(this.f28143a, Long.valueOf(this.f28144b), Integer.valueOf(this.f28145c), Long.valueOf(this.f28147e)) * 31) + Arrays.hashCode(this.f28146d);
    }

    public void setEventIds(String[] strArr) {
        this.f28146d = strArr;
    }

    public void setId(String str) {
        this.f28143a = str;
    }

    public void setIdType(int i10) {
        this.f28145c = i10;
    }

    public void setTimeWindowEnd(long j10) {
        this.f28144b = j10;
    }

    public void setTimestampProcessed(long j10) {
        this.f28147e = j10;
    }

    public String toString() {
        return "CacheBust{id='" + this.f28143a + "', timeWindowEnd=" + this.f28144b + ", idType=" + this.f28145c + ", eventIds=" + Arrays.toString(this.f28146d) + ", timestampProcessed=" + this.f28147e + '}';
    }
}
