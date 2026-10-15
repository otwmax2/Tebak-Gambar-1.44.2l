package com.vungle.warren;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public final class AdRequest implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f27711o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AdMarkup f27712p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Type
    private final int f27713q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f27714r;
    public AtomicLong timeStamp;

    public @interface Type {
        public static final int NORMAL = 0;
        public static final int NO_ASSETS = 1;
        public static final int SINGLE_HBP = 2;
    }

    public AdRequest(String str, @Type int i10, long j10) {
        this.timeStamp = new AtomicLong(0L);
        this.f27711o = str;
        this.f27712p = null;
        this.f27713q = i10;
        this.f27714r = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdRequest.class != obj.getClass()) {
            return false;
        }
        AdRequest adRequest = (AdRequest) obj;
        if (this.f27713q != adRequest.f27713q || !this.f27711o.equals(adRequest.f27711o)) {
            return false;
        }
        AdMarkup adMarkup = this.f27712p;
        AdMarkup adMarkup2 = adRequest.f27712p;
        return adMarkup != null ? adMarkup.equals(adMarkup2) : adMarkup2 == null;
    }

    public long getAdCount() {
        return this.f27714r;
    }

    public String getEventId() {
        AdMarkup adMarkup = this.f27712p;
        if (adMarkup != null) {
            return adMarkup.getEventId();
        }
        return null;
    }

    public String[] getImpression() {
        AdMarkup adMarkup = this.f27712p;
        if (adMarkup != null) {
            return adMarkup.getImpression();
        }
        return null;
    }

    public String getPlacementId() {
        return this.f27711o;
    }

    @Type
    public int getType() {
        return this.f27713q;
    }

    public int hashCode() {
        int iHashCode = this.f27711o.hashCode() * 31;
        AdMarkup adMarkup = this.f27712p;
        return ((iHashCode + (adMarkup != null ? adMarkup.hashCode() : 0)) * 31) + this.f27713q;
    }

    public String toString() {
        return "AdRequest{placementId='" + this.f27711o + "', adMarkup=" + this.f27712p + ", type=" + this.f27713q + ", adCount=" + this.f27714r + '}';
    }

    public AdRequest(String str, AdMarkup adMarkup) {
        this.timeStamp = new AtomicLong(0L);
        this.f27711o = str;
        this.f27712p = adMarkup;
        this.f27713q = 0;
        this.f27714r = 1L;
    }

    public AdRequest(String str) {
        this(str, null);
    }
}
