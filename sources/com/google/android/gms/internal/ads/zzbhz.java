package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import androidx.core.app.o;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbhz implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zzb f10756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdpi f10757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfdk f10758c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbpz f10760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeaf f10761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.zzx f10762g = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzf f10759d = new zzbzf(null);

    public zzbhz(com.google.android.gms.ads.internal.zzb zzbVar, zzbpz zzbpzVar, zzeaf zzeafVar, zzdpi zzdpiVar, zzfdk zzfdkVar) {
        this.f10756a = zzbVar;
        this.f10760e = zzbpzVar;
        this.f10761f = zzeafVar;
        this.f10757b = zzdpiVar;
        this.f10758c = zzfdkVar;
    }

    public static int b(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    @VisibleForTesting
    static Uri c(Context context, zzapw zzapwVar, Uri uri, View view, Activity activity) {
        if (zzapwVar == null) {
            return uri;
        }
        try {
            return zzapwVar.e(uri) ? zzapwVar.a(uri, context, view, activity) : uri;
        } catch (zzapx unused) {
            return uri;
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    @VisibleForTesting
    static Uri d(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e10) {
            zzbza.e("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e10);
        }
        return uri;
    }

    public static boolean f(Map map) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("custom_close"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
    
        r11 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void h(com.google.android.gms.ads.internal.client.zza r18, java.util.Map r19, boolean r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhz.h(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    private final void i(boolean z10) {
        zzbpz zzbpzVar = this.f10760e;
        if (zzbpzVar != null) {
            zzbpzVar.h(z10);
        }
    }

    private final boolean j(com.google.android.gms.ads.internal.client.zza zzaVar, Context context, String str, String str2) {
        zzdpi zzdpiVar = this.f10757b;
        if (zzdpiVar != null) {
            zzean.Ta(context, zzdpiVar, this.f10758c, this.f10761f, str2, "offline_open");
        }
        if (com.google.android.gms.ads.internal.zzt.q().x(context)) {
            this.f10761f.i(this.f10759d, str2);
            return false;
        }
        com.google.android.gms.ads.internal.zzt.r();
        com.google.android.gms.ads.internal.util.zzbr zzbrVarU = com.google.android.gms.ads.internal.util.zzs.U(context);
        com.google.android.gms.ads.internal.zzt.r();
        boolean zA = o.b(context).a();
        boolean zG = com.google.android.gms.ads.internal.zzt.s().g(context, "offline_notification_channel");
        zzcei zzceiVar = (zzcei) zzaVar;
        boolean z10 = zzceiVar.M().i() && zzceiVar.g() == null;
        if (zA && !zG && zzbrVarU != null && !z10) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K7)).booleanValue()) {
                if (zzceiVar.M().i()) {
                    zzean.Va(zzceiVar.g(), null, zzbrVarU, this.f10761f, this.f10757b, this.f10758c, str2, str);
                } else {
                    ((zzcfn) zzaVar).l0(zzbrVarU, this.f10761f, this.f10757b, this.f10758c, str2, str, 14);
                }
                zzdpi zzdpiVar2 = this.f10757b;
                if (zzdpiVar2 != null) {
                    zzean.Ta(context, zzdpiVar2, this.f10758c, this.f10761f, str2, "dialog_impression");
                }
                zzaVar.w0();
                return true;
            }
        }
        this.f10761f.d(str2);
        if (this.f10757b != null) {
            HashMap map = new HashMap();
            if (!zA) {
                map.put("dialog_not_shown_reason", "notifications_disabled");
            } else if (zG) {
                map.put("dialog_not_shown_reason", "notification_channel_disabled");
            } else if (zzbrVarU == null) {
                map.put("dialog_not_shown_reason", "work_manager_unavailable");
            } else {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K7)).booleanValue()) {
                    map.put("dialog_not_shown_reason", "notification_flow_disabled");
                } else if (z10) {
                    map.put("dialog_not_shown_reason", "fullscreen_no_activity");
                }
            }
            zzean.Ua(context, this.f10757b, this.f10758c, this.f10761f, str2, "dialog_not_shown", map);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(int i10) {
        if (this.f10757b == null) {
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
            zzdph zzdphVarA = this.f10757b.a();
            zzdphVarA.b("action", "cct_action");
            zzdphVarA.b("cct_open_status", zzbbr.a(i10));
            zzdphVarA.g();
            return;
        }
        zzfdk zzfdkVar = this.f10758c;
        String strA = zzbbr.a(i10);
        zzfdj zzfdjVarB = zzfdj.b("cct_action");
        zzfdjVarB.a("cct_open_status", strA);
        zzfdkVar.a(zzfdjVarB);
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0307  */
    @Override // com.google.android.gms.internal.ads.zzbhp
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.google.android.gms.ads.internal.client.zza r30, java.util.Map r31) {
        /*
            Method dump skipped, instruction units count: 1071
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhz.a(com.google.android.gms.ads.internal.client.zza, java.util.Map):void");
    }
}
