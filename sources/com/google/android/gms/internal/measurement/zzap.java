package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzap {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzap f23278d = new zzau();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzap f23279e = new zzan();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzap f23280f = new zzag("continue");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzap f23281g = new zzag("break");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzap f23282h = new zzag("return");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzap f23283i = new zzaf(Boolean.TRUE);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzap f23284j = new zzaf(Boolean.FALSE);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzap f23285k = new zzat(BuildConfig.FLAVOR);

    zzap c(String str, zzg zzgVar, List list);

    zzap d();

    Boolean e();

    Double f();

    String g();

    Iterator j();
}
