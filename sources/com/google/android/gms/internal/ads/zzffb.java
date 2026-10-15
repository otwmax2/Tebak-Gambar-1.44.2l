package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.Clock;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeeh f18054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f18057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f18058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeyp f18059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzeyq f18060g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Clock f18061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzapw f18062i;

    public zzffb(zzeeh zzeehVar, zzbzg zzbzgVar, String str, String str2, Context context, zzeyp zzeypVar, zzeyq zzeyqVar, Clock clock, zzapw zzapwVar) {
        this.f18054a = zzeehVar;
        this.f18055b = zzbzgVar.f11605o;
        this.f18056c = str;
        this.f18057d = str2;
        this.f18058e = context;
        this.f18059f = zzeypVar;
        this.f18060g = zzeyqVar;
        this.f18061h = clock;
        this.f18062i = zzapwVar;
    }

    public static final List f(int i10, int i11, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(i((String) it.next(), "@gw_mpe@", "2." + i11));
        }
        return arrayList;
    }

    public static final List g(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(i((String) it.next(), "@gw_adnetstatus@", str));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(String str) {
        return TextUtils.isEmpty(str) ? BuildConfig.FLAVOR : zzbyz.l() ? "fakeForAdDebugLog" : str;
    }

    private static String i(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = BuildConfig.FLAVOR;
        }
        return str.replaceAll(str2, str3);
    }

    public final List c(zzeyo zzeyoVar, zzeyc zzeycVar, List list) {
        return d(zzeyoVar, zzeycVar, false, BuildConfig.FLAVOR, BuildConfig.FLAVOR, list);
    }

    public final List d(zzeyo zzeyoVar, zzeyc zzeycVar, boolean z10, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean z11 = true;
            String strI = i(i(i((String) it.next(), "@gw_adlocid@", zzeyoVar.f17702a.f17696a.f17733f), "@gw_adnetrefresh@", true != z10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES), "@gw_sdkver@", this.f18055b);
            if (zzeycVar != null) {
                strI = zzbxh.c(i(i(i(strI, "@gw_qdata@", zzeycVar.f17673z), "@gw_adnetid@", zzeycVar.f17672y), "@gw_allocid@", zzeycVar.f17671x), this.f18058e, zzeycVar.X);
            }
            String strI2 = i(i(i(strI, "@gw_adnetstatus@", this.f18054a.f()), "@gw_seqnum@", this.f18056c), "@gw_sessid@", this.f18057d);
            boolean z12 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10162a3)).booleanValue() && !TextUtils.isEmpty(str)) {
                z12 = true;
            }
            boolean z13 = !TextUtils.isEmpty(str2);
            if (z12) {
                z11 = z13;
            } else {
                if (z13) {
                }
                arrayList.add(strI2);
            }
            if (this.f18062i.f(Uri.parse(strI2))) {
                Uri.Builder builderBuildUpon = Uri.parse(strI2).buildUpon();
                if (z12) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("ms", str);
                }
                if (z11) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("attok", str2);
                }
                strI2 = builderBuildUpon.build().toString();
            }
            arrayList.add(strI2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f A[LOOP:0: B:13:0x0059->B:15:0x005f, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List e(com.google.android.gms.internal.ads.zzeyc r10, java.util.List r11, com.google.android.gms.internal.ads.zzbud r12) {
        /*
            r9 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r9.f18061h
            long r1 = r1.a()
            java.lang.String r3 = r12.a()     // Catch: android.os.RemoteException -> La8
            int r12 = r12.zzb()     // Catch: android.os.RemoteException -> La8
            java.lang.String r12 = java.lang.Integer.toString(r12)     // Catch: android.os.RemoteException -> La8
            com.google.android.gms.internal.ads.zzbaj r4 = com.google.android.gms.internal.ads.zzbar.f10173b3
            com.google.android.gms.internal.ads.zzbap r5 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r4 = r5.b(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L35
            com.google.android.gms.internal.ads.zzeyq r4 = r9.f18060g
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzfnq r4 = com.google.android.gms.internal.ads.zzfnq.c()
            goto L3b
        L32:
            com.google.android.gms.internal.ads.zzeyp r4 = r4.f17706a
            goto L37
        L35:
            com.google.android.gms.internal.ads.zzeyp r4 = r9.f18059f
        L37:
            com.google.android.gms.internal.ads.zzfnq r4 = com.google.android.gms.internal.ads.zzfnq.d(r4)
        L3b:
            com.google.android.gms.internal.ads.zzfez r5 = new com.google.android.gms.internal.ads.zzfnj() { // from class: com.google.android.gms.internal.ads.zzfez
                static {
                    /*
                        com.google.android.gms.internal.ads.zzfez r0 = new com.google.android.gms.internal.ads.zzfez
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.google.android.gms.internal.ads.zzfez) com.google.android.gms.internal.ads.zzfez.a com.google.android.gms.internal.ads.zzfez
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfez.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfez.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzfnj
                public final java.lang.Object a(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.ads.zzeyp r1 = (com.google.android.gms.internal.ads.zzeyp) r1
                        java.lang.String r1 = com.google.android.gms.internal.ads.zzffb.a(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfez.a(java.lang.Object):java.lang.Object");
                }
            }
            com.google.android.gms.internal.ads.zzfnq r5 = r4.a(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.b(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzffa r7 = new com.google.android.gms.internal.ads.zzfnj() { // from class: com.google.android.gms.internal.ads.zzffa
                static {
                    /*
                        com.google.android.gms.internal.ads.zzffa r0 = new com.google.android.gms.internal.ads.zzffa
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.google.android.gms.internal.ads.zzffa) com.google.android.gms.internal.ads.zzffa.a com.google.android.gms.internal.ads.zzffa
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzffa.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzffa.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzfnj
                public final java.lang.Object a(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.ads.zzeyp r1 = (com.google.android.gms.internal.ads.zzeyp) r1
                        java.lang.String r1 = com.google.android.gms.internal.ads.zzffb.b(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzffa.a(java.lang.Object):java.lang.Object");
                }
            }
            com.google.android.gms.internal.ads.zzfnq r4 = r4.a(r7)
            java.lang.Object r4 = r4.b(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r11 = r11.iterator()
        L59:
            boolean r6 = r11.hasNext()
            if (r6 == 0) goto La7
            java.lang.Object r6 = r11.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = android.net.Uri.encode(r5)
            java.lang.String r8 = "@gw_rwd_userid@"
            java.lang.String r6 = i(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r4)
            java.lang.String r8 = "@gw_rwd_custom_data@"
            java.lang.String r6 = i(r6, r8, r7)
            java.lang.String r7 = java.lang.Long.toString(r1)
            java.lang.String r8 = "@gw_tmstmp@"
            java.lang.String r6 = i(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r3)
            java.lang.String r8 = "@gw_rwd_itm@"
            java.lang.String r6 = i(r6, r8, r7)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = i(r6, r7, r12)
            java.lang.String r7 = r9.f18055b
            java.lang.String r8 = "@gw_sdkver@"
            java.lang.String r6 = i(r6, r8, r7)
            android.content.Context r7 = r9.f18058e
            boolean r8 = r10.X
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbxh.c(r6, r7, r8)
            r0.add(r6)
            goto L59
        La7:
            return r0
        La8:
            r10 = move-exception
            java.lang.String r11 = "Unable to determine award type and amount."
            com.google.android.gms.internal.ads.zzbza.e(r11, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzffb.e(com.google.android.gms.internal.ads.zzeyc, java.util.List, com.google.android.gms.internal.ads.zzbud):java.util.List");
    }
}
