package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.Feature;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f21243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature f21244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Feature f21245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Feature f21246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Feature[] f21247e;

    static {
        Feature feature = new Feature("sms_code_autofill", 2L);
        f21243a = feature;
        Feature feature2 = new Feature("sms_code_browser", 2L);
        f21244b = feature2;
        Feature feature3 = new Feature("sms_retrieve", 1L);
        f21245c = feature3;
        Feature feature4 = new Feature("user_consent", 3L);
        f21246d = feature4;
        f21247e = new Feature[]{feature, feature2, feature3, feature4};
    }
}
