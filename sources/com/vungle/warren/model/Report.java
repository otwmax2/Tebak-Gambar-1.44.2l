package com.vungle.warren.model;

import android.text.TextUtils;
import b7.c;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.gson.i;
import com.google.gson.o;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.AdConfig;
import com.vungle.warren.SessionData;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.ui.JavascriptBridge;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Report {
    public static final int FAILED = 3;
    public static final int NEW = 0;
    public static final int READY = 1;
    public static final int SENDING = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f28174a;
    public long assetDownloadDuration;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f28175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f28176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f28177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f28178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f28179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f28180g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f28181h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f28182i;
    public long initTimeStamp;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f28183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    long f28184k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    long f28185l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f28186m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f28187n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f28188o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final List<UserAction> f28189p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final List<String> f28190q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final List<String> f28191r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f28192s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f28193t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f28194u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f28195v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    String f28196w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    volatile boolean f28197x;

    public @interface Status {
    }

    public static class UserAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @c("action")
        private String f28198a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @c(SDKConstants.PARAM_VALUE)
        private String f28199b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @c("timestamp")
        private long f28200c;

        public UserAction(String str, String str2, long j10) {
            this.f28198a = str;
            this.f28199b = str2;
            this.f28200c = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            UserAction userAction = (UserAction) obj;
            return userAction.f28198a.equals(this.f28198a) && userAction.f28199b.equals(this.f28199b) && userAction.f28200c == this.f28200c;
        }

        public int hashCode() {
            int iHashCode = ((this.f28198a.hashCode() * 31) + this.f28199b.hashCode()) * 31;
            long j10 = this.f28200c;
            return iHashCode + ((int) (j10 ^ (j10 >>> 32)));
        }

        public o toJson() {
            o oVar = new o();
            oVar.x("action", this.f28198a);
            String str = this.f28199b;
            if (str != null && !str.isEmpty()) {
                oVar.x(SDKConstants.PARAM_VALUE, this.f28199b);
            }
            oVar.v("timestamp_millis", Long.valueOf(this.f28200c));
            return oVar;
        }
    }

    Report() {
        this.f28174a = 0;
        this.f28189p = new ArrayList();
        this.f28190q = new ArrayList();
        this.f28191r = new ArrayList();
    }

    public synchronized boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                Report report = (Report) obj;
                if (!report.f28175b.equals(this.f28175b)) {
                    return false;
                }
                if (!report.f28176c.equals(this.f28176c)) {
                    return false;
                }
                if (!report.f28177d.equals(this.f28177d)) {
                    return false;
                }
                if (report.f28178e != this.f28178e) {
                    return false;
                }
                if (report.f28179f != this.f28179f) {
                    return false;
                }
                if (report.f28181h != this.f28181h) {
                    return false;
                }
                if (!report.f28182i.equals(this.f28182i)) {
                    return false;
                }
                if (report.f28183j != this.f28183j) {
                    return false;
                }
                if (report.f28184k != this.f28184k) {
                    return false;
                }
                if (report.f28185l != this.f28185l) {
                    return false;
                }
                if (!report.f28186m.equals(this.f28186m)) {
                    return false;
                }
                if (!report.f28192s.equals(this.f28192s)) {
                    return false;
                }
                if (!report.f28193t.equals(this.f28193t)) {
                    return false;
                }
                if (report.f28197x != this.f28197x) {
                    return false;
                }
                if (!report.f28194u.equals(this.f28194u)) {
                    return false;
                }
                if (report.initTimeStamp != this.initTimeStamp) {
                    return false;
                }
                if (report.assetDownloadDuration != this.assetDownloadDuration) {
                    return false;
                }
                if (report.f28190q.size() != this.f28190q.size()) {
                    return false;
                }
                for (int i10 = 0; i10 < this.f28190q.size(); i10++) {
                    if (!report.f28190q.get(i10).equals(this.f28190q.get(i10))) {
                        return false;
                    }
                }
                if (report.f28191r.size() != this.f28191r.size()) {
                    return false;
                }
                for (int i11 = 0; i11 < this.f28191r.size(); i11++) {
                    if (!report.f28191r.get(i11).equals(this.f28191r.get(i11))) {
                        return false;
                    }
                }
                if (report.f28189p.size() != this.f28189p.size()) {
                    return false;
                }
                for (int i12 = 0; i12 < this.f28189p.size(); i12++) {
                    if (!report.f28189p.get(i12).equals(this.f28189p.get(i12))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public long getAdDuration() {
        return this.f28184k;
    }

    public long getAdStartTime() {
        return this.f28181h;
    }

    public String getAdvertisementID() {
        return this.f28187n;
    }

    public String getId() {
        return this.f28175b + "_" + this.f28181h;
    }

    public String getPlacementId() {
        return this.f28175b;
    }

    @Status
    public int getStatus() {
        return this.f28174a;
    }

    public String getUserID() {
        return this.f28194u;
    }

    public synchronized int hashCode() {
        int i10;
        long j10;
        int i11 = 1;
        int iHashCode = ((((((this.f28175b.hashCode() * 31) + this.f28176c.hashCode()) * 31) + this.f28177d.hashCode()) * 31) + (this.f28178e ? 1 : 0)) * 31;
        if (!this.f28179f) {
            i11 = 0;
        }
        long j11 = this.f28181h;
        int iHashCode2 = (((((iHashCode + i11) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f28182i.hashCode()) * 31;
        long j12 = this.f28183j;
        int i12 = (iHashCode2 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
        long j13 = this.f28184k;
        int i13 = (i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.f28185l;
        int i14 = (i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        long j15 = this.initTimeStamp;
        i10 = (i14 + ((int) (j15 ^ (j15 >>> 32)))) * 31;
        j10 = this.assetDownloadDuration;
        return ((((((((((((((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f28186m.hashCode()) * 31) + this.f28189p.hashCode()) * 31) + this.f28190q.hashCode()) * 31) + this.f28191r.hashCode()) * 31) + this.f28192s.hashCode()) * 31) + this.f28193t.hashCode()) * 31) + this.f28194u.hashCode()) * 31) + (this.f28197x ? 1 : 0);
    }

    public boolean isCTAClicked() {
        return this.f28197x;
    }

    public synchronized void recordAction(String str, String str2, long j10) {
        this.f28189p.add(new UserAction(str, str2, j10));
        this.f28190q.add(str);
        if (str.equals(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION)) {
            this.f28197x = true;
        }
    }

    public synchronized void recordError(String str) {
        this.f28191r.add(str);
    }

    public void recordProgress(int i10) {
        this.f28188o = i10;
    }

    public void setAdDuration(long j10) {
        this.f28184k = j10;
    }

    public void setAllAssetDownloaded(boolean z10) {
        this.f28180g = !z10;
    }

    public void setStatus(@Status int i10) {
        this.f28174a = i10;
    }

    public void setTtDownload(long j10) {
        this.f28185l = j10;
    }

    public void setVideoLength(long j10) {
        this.f28183j = j10;
    }

    public synchronized o toReportBody() {
        o oVar;
        oVar = new o();
        oVar.x("placement_reference_id", this.f28175b);
        oVar.x(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN, this.f28176c);
        oVar.x("app_id", this.f28177d);
        oVar.v("incentivized", Integer.valueOf(this.f28178e ? 1 : 0));
        oVar.u("header_bidding", Boolean.valueOf(this.f28179f));
        oVar.u("play_remote_assets", Boolean.valueOf(this.f28180g));
        oVar.v(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, Long.valueOf(this.f28181h));
        if (!TextUtils.isEmpty(this.f28182i)) {
            oVar.x("url", this.f28182i);
        }
        oVar.v("adDuration", Long.valueOf(this.f28184k));
        oVar.v("ttDownload", Long.valueOf(this.f28185l));
        oVar.x("campaign", this.f28186m);
        oVar.x("adType", this.f28192s);
        oVar.x("templateId", this.f28193t);
        oVar.v(ReportDBAdapter.ReportColumns.COLUMN_INIT_TIMESTAMP, Long.valueOf(this.initTimeStamp));
        oVar.v("asset_download_duration", Long.valueOf(this.assetDownloadDuration));
        if (!TextUtils.isEmpty(this.f28196w)) {
            oVar.x("ad_size", this.f28196w);
        }
        i iVar = new i();
        o oVar2 = new o();
        oVar2.v("startTime", Long.valueOf(this.f28181h));
        int i10 = this.f28188o;
        if (i10 > 0) {
            oVar2.v(ReportDBAdapter.ReportColumns.COLUMN_VIDEO_VIEWED, Integer.valueOf(i10));
        }
        long j10 = this.f28183j;
        if (j10 > 0) {
            oVar2.v("videoLength", Long.valueOf(j10));
        }
        i iVar2 = new i();
        Iterator<UserAction> it = this.f28189p.iterator();
        while (it.hasNext()) {
            iVar2.t(it.next().toJson());
        }
        oVar2.t("userActions", iVar2);
        iVar.t(oVar2);
        oVar.t("plays", iVar);
        i iVar3 = new i();
        Iterator<String> it2 = this.f28191r.iterator();
        while (it2.hasNext()) {
            iVar3.u(it2.next());
        }
        oVar.t(ReportDBAdapter.ReportColumns.COLUMN_ERRORS, iVar3);
        i iVar4 = new i();
        Iterator<String> it3 = this.f28190q.iterator();
        while (it3.hasNext()) {
            iVar4.u(it3.next());
        }
        oVar.t("clickedThrough", iVar4);
        if (this.f28178e && !TextUtils.isEmpty(this.f28194u)) {
            oVar.x("user", this.f28194u);
        }
        int i11 = this.f28195v;
        if (i11 > 0) {
            oVar.v("ordinal_view", Integer.valueOf(i11));
        }
        return oVar;
    }

    public Report(Advertisement advertisement, Placement placement, long j10, SessionData sessionData) {
        this(advertisement, placement, j10, null, sessionData);
    }

    public Report(Advertisement advertisement, Placement placement, long j10, String str, SessionData sessionData) {
        this.f28174a = 0;
        this.f28189p = new ArrayList();
        this.f28190q = new ArrayList();
        this.f28191r = new ArrayList();
        this.f28175b = placement.getId();
        this.f28176c = advertisement.getAdToken();
        this.f28187n = advertisement.getId();
        this.f28177d = advertisement.getAppID();
        this.f28178e = placement.isIncentivized();
        this.f28179f = placement.isHeaderBidding();
        this.f28181h = j10;
        this.f28182i = advertisement.e();
        this.f28185l = -1L;
        this.f28186m = advertisement.getCampaign();
        this.initTimeStamp = sessionData != null ? sessionData.getInitTimeStamp() : 0L;
        this.assetDownloadDuration = advertisement.getAssetDownloadDuration();
        int adType = advertisement.getAdType();
        if (adType == 0) {
            this.f28192s = "vungle_local";
        } else if (adType == 1) {
            this.f28192s = "vungle_mraid";
        } else {
            throw new IllegalArgumentException("Unknown ad type, cannot process!");
        }
        this.f28193t = advertisement.c();
        if (str == null) {
            this.f28194u = BuildConfig.FLAVOR;
        } else {
            this.f28194u = str;
        }
        this.f28195v = advertisement.getAdConfig().getOrdinal();
        AdConfig.AdSize adSize = advertisement.getAdConfig().getAdSize();
        if (AdConfig.AdSize.isNonMrecBannerAdSize(adSize)) {
            this.f28196w = adSize.getName();
        }
    }
}
