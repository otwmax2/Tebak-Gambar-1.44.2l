package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyg implements zzfcd {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f15938d = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfec f15940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfen f15941c;

    public zzdyg(String str, zzfen zzfenVar, zzfec zzfecVar) {
        this.f15939a = str;
        this.f15941c = zzfenVar;
        this.f15940b = zzfecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfcd
    public final /* bridge */ /* synthetic */ Object a(Object obj) throws Exception {
        zzdtf zzdtfVar;
        String strConcat;
        zzdyf zzdyfVar = (zzdyf) obj;
        int iOptInt = zzdyfVar.f15936a.optInt("http_timeout_millis", 60000);
        zzbtq zzbtqVar = zzdyfVar.f15937b;
        int iA = zzbtqVar.a();
        String strJoin = BuildConfig.FLAVOR;
        if (iA != -2) {
            if (zzbtqVar.a() == 1) {
                if (zzbtqVar.f() != null) {
                    strJoin = TextUtils.join(", ", zzbtqVar.f());
                    zzbza.d(strJoin);
                }
                zzdtfVar = new zzdtf(2, "Error building request URL: ".concat(String.valueOf(strJoin)));
            } else {
                zzdtfVar = new zzdtf(1);
            }
            zzfen zzfenVar = this.f15941c;
            zzfec zzfecVar = this.f15940b;
            zzfecVar.b(zzdtfVar);
            zzfecVar.y0(false);
            zzfenVar.a(zzfecVar);
            throw zzdtfVar;
        }
        HashMap map = new HashMap();
        if (zzdyfVar.f15937b.h() && !TextUtils.isEmpty(this.f15939a)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I0)).booleanValue()) {
                String str = this.f15939a;
                if (TextUtils.isEmpty(str)) {
                    strConcat = BuildConfig.FLAVOR;
                } else {
                    Matcher matcher = f15938d.matcher(str);
                    strConcat = BuildConfig.FLAVOR;
                    while (matcher.find()) {
                        String strGroup = matcher.group(1);
                        if (strGroup != null) {
                            Locale locale = Locale.ROOT;
                            if (strGroup.toLowerCase(locale).startsWith("id=") || strGroup.toLowerCase(locale).startsWith("ide=")) {
                                if (!TextUtils.isEmpty(strConcat)) {
                                    strConcat = strConcat.concat("; ");
                                }
                                strConcat = strConcat.concat(strGroup);
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(strConcat)) {
                    map.put("Cookie", strConcat);
                }
            } else {
                map.put("Cookie", this.f15939a);
            }
        }
        if (zzdyfVar.f15937b.i()) {
            zzdyh.a(map, zzdyfVar.f15936a);
        }
        if (zzdyfVar.f15937b != null && !TextUtils.isEmpty(zzdyfVar.f15937b.d())) {
            strJoin = zzdyfVar.f15937b.d();
        }
        zzfen zzfenVar2 = this.f15941c;
        zzfec zzfecVar2 = this.f15940b;
        zzfecVar2.y0(true);
        zzfenVar2.a(zzfecVar2);
        return new zzdyb(zzdyfVar.f15937b.e(), iOptInt, map, strJoin.getBytes(zzfnh.f18476c), BuildConfig.FLAVOR, zzdyfVar.f15937b.i());
    }
}
