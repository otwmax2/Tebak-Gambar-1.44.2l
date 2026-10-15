package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzn extends zzdzo {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final SparseArray f16023h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f16024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzctt f16025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TelephonyManager f16026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdzf f16027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f16028g;

    static {
        SparseArray sparseArray = new SparseArray();
        f16023h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzayr.CONNECTED);
        int iOrdinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzayr zzayrVar = zzayr.CONNECTING;
        sparseArray.put(iOrdinal, zzayrVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzayrVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzayrVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzayr.DISCONNECTING);
        int iOrdinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzayr zzayrVar2 = zzayr.DISCONNECTED;
        sparseArray.put(iOrdinal2, zzayrVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzayrVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzayrVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzayrVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzayrVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzayr.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzayrVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzayrVar);
    }

    zzdzn(Context context, zzctt zzcttVar, zzdzf zzdzfVar, zzdzb zzdzbVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzdzbVar, zzgVar);
        this.f16024c = context;
        this.f16025d = zzcttVar;
        this.f16027f = zzdzfVar;
        this.f16026e = (TelephonyManager) context.getSystemService("phone");
    }

    static /* bridge */ /* synthetic */ zzayi b(zzdzn zzdznVar, Bundle bundle) {
        zzayb zzaybVarI = zzayi.I();
        int i10 = bundle.getInt("cnt", -2);
        int i11 = bundle.getInt("gnt", 0);
        int i12 = 2;
        if (i10 == -1) {
            zzdznVar.f16028g = 2;
        } else {
            zzdznVar.f16028g = 1;
            if (i10 == 0) {
                zzaybVarI.p(2);
            } else if (i10 != 1) {
                zzaybVarI.p(1);
            } else {
                zzaybVarI.p(3);
            }
            switch (i11) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i12 = 3;
                    break;
                case 13:
                    i12 = 5;
                    break;
                default:
                    i12 = 1;
                    break;
            }
            zzaybVarI.o(i12);
        }
        return (zzayi) zzaybVarI.k();
    }

    static /* bridge */ /* synthetic */ zzayr c(zzdzn zzdznVar, Bundle bundle) {
        return (zzayr) f16023h.get(zzezi.a(zzezi.a(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE), "network").getInt("active_network_state", -1), zzayr.UNSPECIFIED);
    }

    static /* bridge */ /* synthetic */ byte[] f(zzdzn zzdznVar, boolean z10, ArrayList arrayList, zzayi zzayiVar, zzayr zzayrVar) {
        zzaym zzaymVarQ = zzayn.Q();
        zzaymVarQ.o(arrayList);
        zzaymVarQ.x(g(Settings.Global.getInt(zzdznVar.f16024c.getContentResolver(), "airplane_mode_on", 0) != 0));
        zzaymVarQ.y(com.google.android.gms.ads.internal.zzt.s().h(zzdznVar.f16024c, zzdznVar.f16026e));
        zzaymVarQ.u(zzdznVar.f16027f.e());
        zzaymVarQ.s(zzdznVar.f16027f.b());
        zzaymVarQ.p(zzdznVar.f16027f.a());
        zzaymVarQ.q(zzayrVar);
        zzaymVarQ.r(zzayiVar);
        zzaymVarQ.z(zzdznVar.f16028g);
        zzaymVarQ.A(g(z10));
        zzaymVarQ.w(zzdznVar.f16027f.d());
        zzaymVarQ.v(com.google.android.gms.ads.internal.zzt.b().a());
        zzaymVarQ.B(g(Settings.Global.getInt(zzdznVar.f16024c.getContentResolver(), "wifi_on", 0) != 0));
        return ((zzayn) zzaymVarQ.k()).t();
    }

    private static final int g(boolean z10) {
        return z10 ? 2 : 1;
    }

    public final void e(boolean z10) {
        zzfuj.q(this.f16025d.b(), new zzdzm(this, z10), zzbzn.f11619f);
    }
}
