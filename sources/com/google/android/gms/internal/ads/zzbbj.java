package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@Deprecated
public final class zzbbj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f10471a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f10472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10473c;

    public zzbbj(boolean z10, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f10472b = linkedHashMap;
        this.f10473c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzbbg f() {
        return new zzbbg(com.google.android.gms.ads.internal.zzt.b().b(), null, null);
    }

    public final zzbbi a() {
        zzbbi zzbbiVar;
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap map = new HashMap();
        synchronized (this.f10473c) {
            for (zzbbg zzbbgVar : this.f10471a) {
                long jA = zzbbgVar.a();
                String strC = zzbbgVar.c();
                zzbbg zzbbgVarB = zzbbgVar.b();
                if (zzbbgVarB != null && jA > 0) {
                    long jA2 = jA - zzbbgVarB.a();
                    sb.append(strC);
                    sb.append('.');
                    sb.append(jA2);
                    sb.append(',');
                    if (zBooleanValue) {
                        if (map.containsKey(Long.valueOf(zzbbgVarB.a()))) {
                            StringBuilder sb2 = (StringBuilder) map.get(Long.valueOf(zzbbgVarB.a()));
                            sb2.append('+');
                            sb2.append(strC);
                        } else {
                            map.put(Long.valueOf(zzbbgVarB.a()), new StringBuilder(strC));
                        }
                    }
                }
            }
            this.f10471a.clear();
            String string = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (zBooleanValue) {
                for (Map.Entry entry : map.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append('.');
                    sb3.append(com.google.android.gms.ads.internal.zzt.b().a() + (((Long) entry.getKey()).longValue() - com.google.android.gms.ads.internal.zzt.b().b()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                string = sb3.toString();
            }
            zzbbiVar = new zzbbi(sb.toString(), string);
        }
        return zzbbiVar;
    }

    @VisibleForTesting
    public final Map b() {
        Map map;
        synchronized (this.f10473c) {
            com.google.android.gms.ads.internal.zzt.q().f();
            map = this.f10472b;
        }
        return map;
    }

    public final void c(zzbbj zzbbjVar) {
        synchronized (this.f10473c) {
        }
    }

    public final void d(String str, String str2) {
        zzbaz zzbazVarF;
        if (TextUtils.isEmpty(str2) || (zzbazVarF = com.google.android.gms.ads.internal.zzt.q().f()) == null) {
            return;
        }
        synchronized (this.f10473c) {
            zzbbf zzbbfVarA = zzbazVarF.a(str);
            Map map = this.f10472b;
            map.put(str, zzbbfVarA.a((String) map.get(str), str2));
        }
    }

    public final boolean e(zzbbg zzbbgVar, long j10, String... strArr) {
        synchronized (this.f10473c) {
            for (int i10 = 0; i10 <= 0; i10++) {
                this.f10471a.add(new zzbbg(j10, strArr[i10], zzbbgVar));
            }
        }
        return true;
    }
}
