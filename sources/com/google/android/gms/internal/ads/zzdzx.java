package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzawe f16045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f16046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdzb f16047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzg f16048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfdk f16050f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f16051g = com.google.android.gms.ads.internal.zzt.q().h();

    public zzdzx(Context context, zzbzg zzbzgVar, zzawe zzaweVar, zzdzb zzdzbVar, String str, zzfdk zzfdkVar) {
        this.f16046b = context;
        this.f16048d = zzbzgVar;
        this.f16045a = zzaweVar;
        this.f16047c = zzdzbVar;
        this.f16049e = str;
        this.f16050f = zzfdkVar;
    }

    private static final void c(SQLiteDatabase sQLiteDatabase, ArrayList arrayList) {
        int size = arrayList.size();
        long jO = 0;
        for (int i10 = 0; i10 < size; i10++) {
            zzayn zzaynVar = (zzayn) arrayList.get(i10);
            if (zzaynVar.h0() == 2 && zzaynVar.O() > jO) {
                jO = zzaynVar.O();
            }
        }
        if (jO != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(SDKConstants.PARAM_VALUE, Long.valueOf(jO));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    final /* synthetic */ Void a(boolean z10, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (z10) {
            this.f16046b.deleteDatabase("OfflineUpload.db");
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
            zzfdj zzfdjVarB = zzfdj.b("oa_upload");
            zzfdjVarB.a("oa_failed_reqs", String.valueOf(zzdzq.a(sQLiteDatabase, 0)));
            zzfdjVarB.a("oa_total_reqs", String.valueOf(zzdzq.a(sQLiteDatabase, 1)));
            zzfdjVarB.a("oa_upload_time", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
            zzfdjVarB.a("oa_last_successful_time", String.valueOf(zzdzq.b(sQLiteDatabase, 2)));
            zzfdjVarB.a("oa_session_id", this.f16051g.g0() ? BuildConfig.FLAVOR : this.f16049e);
            this.f16050f.a(zzfdjVarB);
            ArrayList arrayListC = zzdzq.c(sQLiteDatabase);
            c(sQLiteDatabase, arrayListC);
            int size = arrayListC.size();
            for (int i10 = 0; i10 < size; i10++) {
                zzayn zzaynVar = (zzayn) arrayListC.get(i10);
                zzfdj zzfdjVarB2 = zzfdj.b("oa_signals");
                zzfdjVarB2.a("oa_session_id", this.f16051g.g0() ? BuildConfig.FLAVOR : this.f16049e);
                zzayi zzayiVarP = zzaynVar.P();
                String strValueOf = zzayiVarP.M() ? String.valueOf(zzayiVarP.O() - 1) : "-1";
                String string = zzfqy.b(zzaynVar.V(), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdzw
                    @Override // com.google.android.gms.internal.ads.zzfnj
                    public final Object a(Object obj) {
                        return ((zzaxc) obj).name();
                    }
                }).toString();
                zzfdjVarB2.a("oa_sig_ts", String.valueOf(zzaynVar.O()));
                zzfdjVarB2.a("oa_sig_status", String.valueOf(zzaynVar.h0() - 1));
                zzfdjVarB2.a("oa_sig_resp_lat", String.valueOf(zzaynVar.N()));
                zzfdjVarB2.a("oa_sig_render_lat", String.valueOf(zzaynVar.M()));
                zzfdjVarB2.a("oa_sig_formats", string);
                zzfdjVarB2.a("oa_sig_nw_type", strValueOf);
                zzfdjVarB2.a("oa_sig_wifi", String.valueOf(zzaynVar.i0() - 1));
                zzfdjVarB2.a("oa_sig_airplane", String.valueOf(zzaynVar.e0() - 1));
                zzfdjVarB2.a("oa_sig_data", String.valueOf(zzaynVar.f0() - 1));
                zzfdjVarB2.a("oa_sig_nw_resp", String.valueOf(zzaynVar.L()));
                zzfdjVarB2.a("oa_sig_offline", String.valueOf(zzaynVar.g0() - 1));
                zzfdjVarB2.a("oa_sig_nw_state", String.valueOf(zzaynVar.T().zza()));
                if (zzayiVarP.L() && zzayiVarP.M() && zzayiVarP.O() == 2) {
                    zzfdjVarB2.a("oa_sig_cell_type", String.valueOf(zzayiVarP.N() - 1));
                }
                this.f16050f.a(zzfdjVarB2);
            }
        } else {
            ArrayList arrayListC2 = zzdzq.c(sQLiteDatabase);
            zzayo zzayoVarI = zzays.I();
            zzayoVarI.p(this.f16046b.getPackageName());
            zzayoVarI.r(Build.MODEL);
            zzayoVarI.s(zzdzq.a(sQLiteDatabase, 0));
            zzayoVarI.o(arrayListC2);
            zzayoVarI.v(zzdzq.a(sQLiteDatabase, 1));
            zzayoVarI.q(zzdzq.a(sQLiteDatabase, 3));
            zzayoVarI.w(com.google.android.gms.ads.internal.zzt.b().a());
            zzayoVarI.u(zzdzq.b(sQLiteDatabase, 2));
            final zzays zzaysVar = (zzays) zzayoVarI.k();
            c(sQLiteDatabase, arrayListC2);
            this.f16045a.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdzu
                @Override // com.google.android.gms.internal.ads.zzawd
                public final void a(zzaxt zzaxtVar) {
                    zzaxtVar.x(zzaysVar);
                }
            });
            zzazd zzazdVarI = zzaze.I();
            zzazdVarI.o(this.f16048d.f11606p);
            zzazdVarI.q(this.f16048d.f11607q);
            zzazdVarI.p(true == this.f16048d.f11608r ? 0 : 2);
            final zzaze zzazeVar = (zzaze) zzazdVarI.k();
            this.f16045a.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdzv
                @Override // com.google.android.gms.internal.ads.zzawd
                public final void a(zzaxt zzaxtVar) {
                    zzaze zzazeVar2 = zzazeVar;
                    zzaxl zzaxlVar = (zzaxl) zzaxtVar.p().i();
                    zzaxlVar.p(zzazeVar2);
                    zzaxtVar.v(zzaxlVar);
                }
            });
            this.f16045a.c(10004);
        }
        zzdzq.f(sQLiteDatabase);
        return null;
    }

    public final void b(final boolean z10) {
        try {
            this.f16047c.a(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdzt
                @Override // com.google.android.gms.internal.ads.zzfcd
                public final Object a(Object obj) throws Exception {
                    this.f16040a.a(z10, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e10) {
            zzbza.d("Error in offline signals database startup: ".concat(String.valueOf(e10.getMessage())));
        }
    }
}
