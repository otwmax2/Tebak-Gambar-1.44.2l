package com.google.android.gms.ads;

import com.vungle.mediation.BuildConfig;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class RequestConfiguration {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List f5611e = Arrays.asList("MA", "T", "PG", "G");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f5614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f5615d;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f5616a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5617b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private String f5618c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f5619d = new ArrayList();

        public RequestConfiguration a() {
            return new RequestConfiguration(this.f5616a, this.f5617b, this.f5618c, this.f5619d, null);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    /* synthetic */ RequestConfiguration(int i10, int i11, String str, List list, zzh zzhVar) {
        this.f5612a = i10;
        this.f5613b = i11;
        this.f5614c = str;
        this.f5615d = list;
    }

    public String a() {
        String str = this.f5614c;
        return str == null ? BuildConfig.FLAVOR : str;
    }

    public int b() {
        return this.f5612a;
    }

    public int c() {
        return this.f5613b;
    }

    public List<String> d() {
        return new ArrayList(this.f5615d);
    }
}
