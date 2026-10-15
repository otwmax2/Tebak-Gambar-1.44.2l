package com.vungle.warren;

import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.VisionData;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.NetworkProvider;
import com.vungle.warren.vision.VisionConfig;

/* JADX INFO: loaded from: classes2.dex */
class VisionController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Repository f27882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NetworkProvider f27883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private VisionConfig f27884c = new VisionConfig();

    VisionController(Repository repository, NetworkProvider networkProvider) {
        this.f27882a = repository;
        this.f27883b = networkProvider;
    }

    private String a() {
        Cookie cookie = (Cookie) this.f27882a.load("visionCookie", Cookie.class).get();
        if (cookie == null) {
            return null;
        }
        return cookie.getString("data_science_cache");
    }

    String b(String str) {
        str.hashCode();
        switch (str) {
            case "campaign_details":
                return "campaign";
            case "creative_details":
                return VisionDataDBAdapter.VisionDataColumns.COLUMN_CREATIVE;
            case "advertiser_details":
                return VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER;
            default:
                return null;
        }
    }

    boolean c() {
        return this.f27884c.enabled;
    }

    void d(String str, String str2, String str3) throws DatabaseHelper.DBException {
        this.f27882a.save(new VisionData(System.currentTimeMillis(), str, str2, str3));
        Repository repository = this.f27882a;
        VisionConfig.Limits limits = this.f27884c.viewLimit;
        repository.trimVisionData(limits != null ? limits.device : 0);
    }

    void e(VisionConfig visionConfig) throws DatabaseHelper.DBException {
        this.f27884c = visionConfig;
        if (visionConfig.enabled) {
            Repository repository = this.f27882a;
            VisionConfig.Limits limits = visionConfig.viewLimit;
            repository.trimVisionData(limits != null ? limits.device : 0);
        }
    }

    void f(String str) throws DatabaseHelper.DBException {
        Cookie cookie = new Cookie("visionCookie");
        if (str != null) {
            cookie.putValue("data_science_cache", str);
        }
        this.f27882a.save(cookie);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0043 A[PHI: r4
      0x0043: PHI (r4v8 int) = (r4v7 int), (r4v10 int) binds: [B:27:0x004e, B:23:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    @android.annotation.TargetApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.gson.o getPayload() {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.VisionController.getPayload():com.google.gson.o");
    }
}
