package com.vungle.warren.model;

import com.vungle.warren.AdConfig;

/* JADX INFO: loaded from: classes2.dex */
public class Placement {
    public static final int INVALID_INTEGER_VALUE = Integer.MIN_VALUE;
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_DEPRECTAED_TEMPLATE = 2;
    public static final int TYPE_VUNGLE_BANNER = 1;
    public static final int TYPE_VUNGLE_MREC = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f28162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f28163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f28164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f28165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f28166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f28167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f28168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f28169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @PlacementAdType
    int f28170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected AdConfig.AdSize f28171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected AdConfig.AdSize f28172k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f28173l;

    public @interface PlacementAdType {
    }

    public Placement(String str) {
        this.f28170i = 0;
        this.f28172k = AdConfig.AdSize.VUNGLE_DEFAULT;
        this.f28162a = str;
        this.f28163b = false;
        this.f28164c = false;
        this.f28168g = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Placement placement = (Placement) obj;
        String str = this.f28162a;
        if (str == null ? placement.f28162a == null : str.equals(placement.f28162a)) {
            return this.f28170i == placement.f28170i && this.f28163b == placement.f28163b && this.f28164c == placement.f28164c && this.f28168g == placement.f28168g && this.f28169h == placement.f28169h;
        }
        return false;
    }

    public int getAdRefreshDuration() {
        int i10 = this.f28166e;
        if (i10 <= 0) {
            return 0;
        }
        return i10;
    }

    public AdConfig.AdSize getAdSize() {
        AdConfig.AdSize adSize = this.f28171j;
        return adSize == null ? AdConfig.AdSize.VUNGLE_DEFAULT : adSize;
    }

    public int getAutoCachePriority() {
        return this.f28167f;
    }

    public String getId() {
        return this.f28162a;
    }

    public int getMaxHbCache() {
        return this.f28173l;
    }

    @PlacementAdType
    public int getPlacementAdType() {
        return this.f28170i;
    }

    public AdConfig.AdSize getRecommendedAdSize() {
        return this.f28172k;
    }

    public long getWakeupTime() {
        return this.f28165d;
    }

    public int hashCode() {
        String str = this.f28162a;
        return ((((((((((str != null ? str.hashCode() : 0) * 31) + this.f28170i) * 31) + (this.f28163b ? 1 : 0)) * 31) + (this.f28164c ? 1 : 0)) * 31) + (this.f28168g ? 1 : 0)) * 31) + (this.f28169h ? 1 : 0);
    }

    public boolean isAutoCached() {
        if (AdConfig.AdSize.isNonMrecBannerAdSize(this.f28171j)) {
            return true;
        }
        return this.f28163b;
    }

    public boolean isHeaderBidding() {
        return this.f28168g;
    }

    public boolean isIncentivized() {
        return this.f28164c;
    }

    public boolean isMultipleHBPEnabled() {
        return this.f28168g && this.f28173l > 0;
    }

    public boolean isSingleHBPEnabled() {
        return this.f28168g && this.f28173l == 1;
    }

    public boolean isValid() {
        return this.f28169h;
    }

    public void setAdSize(AdConfig.AdSize adSize) {
        this.f28171j = adSize;
    }

    public void setValid(boolean z10) {
        this.f28169h = z10;
    }

    public void setWakeupTime(long j10) {
        this.f28165d = j10;
    }

    public void snooze(long j10) {
        this.f28165d = System.currentTimeMillis() + (j10 * 1000);
    }

    public String toString() {
        return "Placement{identifier='" + this.f28162a + "', autoCached=" + this.f28163b + ", incentivized=" + this.f28164c + ", wakeupTime=" + this.f28165d + ", adRefreshDuration=" + this.f28166e + ", autoCachePriority=" + this.f28167f + ", headerBidding=" + this.f28168g + ", isValid=" + this.f28169h + ", placementAdType=" + this.f28170i + ", adSize=" + this.f28171j + ", maxHbCache=" + this.f28173l + ", adSize=" + this.f28171j + ", recommendedAdSize=" + this.f28172k + '}';
    }

    Placement() {
        this.f28170i = 0;
        this.f28172k = AdConfig.AdSize.VUNGLE_DEFAULT;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Placement(com.google.gson.o r8) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Placement.<init>(com.google.gson.o):void");
    }
}
