package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import androidx.core.app.l;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzean extends zzbqu {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f16103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdpi f16104p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbzf f16105q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeaf f16106r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzfdk f16107s;

    @VisibleForTesting
    public zzean(Context context, zzeaf zzeafVar, zzbzf zzbzfVar, zzdpi zzdpiVar, zzfdk zzfdkVar) {
        this.f16103o = context;
        this.f16104p = zzdpiVar;
        this.f16105q = zzbzfVar;
        this.f16106r = zzeafVar;
        this.f16107s = zzfdkVar;
    }

    public static void Ta(Context context, zzdpi zzdpiVar, zzfdk zzfdkVar, zzeaf zzeafVar, String str, String str2) {
        Ua(context, zzdpiVar, zzfdkVar, zzeafVar, str, str2, new HashMap());
    }

    public static void Ua(Context context, zzdpi zzdpiVar, zzfdk zzfdkVar, zzeaf zzeafVar, String str, String str2, Map map) {
        String strF;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S7)).booleanValue()) {
            zzfdj zzfdjVarB = zzfdj.b(str2);
            zzfdjVarB.a("gqi", str);
            zzfdjVarB.a("device_connectivity", true == com.google.android.gms.ads.internal.zzt.q().x(context) ? "online" : "offline");
            zzfdjVarB.a("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
            for (Map.Entry entry : map.entrySet()) {
                zzfdjVarB.a((String) entry.getKey(), (String) entry.getValue());
            }
            strF = zzfdkVar.b(zzfdjVarB);
        } else {
            zzdph zzdphVarA = zzdpiVar.a();
            zzdphVarA.b("gqi", str);
            zzdphVarA.b("action", str2);
            zzdphVarA.b("device_connectivity", true == com.google.android.gms.ads.internal.zzt.q().x(context) ? "online" : "offline");
            zzdphVarA.b("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a()));
            for (Map.Entry entry2 : map.entrySet()) {
                zzdphVarA.b((String) entry2.getKey(), (String) entry2.getValue());
            }
            strF = zzdphVarA.f();
        }
        zzeafVar.e(new zzeah(com.google.android.gms.ads.internal.zzt.b().a(), str, strF, 2));
    }

    public static void Va(final Activity activity, final com.google.android.gms.ads.internal.overlay.zzl zzlVar, final com.google.android.gms.ads.internal.util.zzbr zzbrVar, final zzeaf zzeafVar, final zzdpi zzdpiVar, final zzfdk zzfdkVar, final String str, final String str2) {
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = com.google.android.gms.ads.internal.util.zzs.g(activity);
        final Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        builderG.setTitle(resourcesD == null ? "Open ad when you're back online." : resourcesD.getString(R.string.f5705j)).setMessage(resourcesD == null ? "We'll send you a notification with a link to the advertiser site." : resourcesD.getString(R.string.f5704i)).setPositiveButton(resourcesD == null ? "OK" : resourcesD.getString(R.string.f5701f), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeaj
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                final com.google.android.gms.ads.internal.overlay.zzl zzlVar2;
                zzdpi zzdpiVar2 = zzdpiVar;
                Activity activity2 = activity;
                zzfdk zzfdkVar2 = zzfdkVar;
                zzeaf zzeafVar2 = zzeafVar;
                String str3 = str;
                com.google.android.gms.ads.internal.util.zzbr zzbrVar2 = zzbrVar;
                String str4 = str2;
                Resources resources = resourcesD;
                com.google.android.gms.ads.internal.overlay.zzl zzlVar3 = zzlVar;
                if (zzdpiVar2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "confirm");
                    zzlVar2 = zzlVar3;
                    zzean.Ua(activity2, zzdpiVar2, zzfdkVar2, zzeafVar2, str3, "dialog_click", map);
                } else {
                    zzlVar2 = zzlVar3;
                }
                try {
                } catch (RemoteException e10) {
                    zzbza.e("Failed to schedule offline notification poster.", e10);
                }
                if (!zzbrVar2.zzf(ObjectWrapper.Q4(activity2), str4, str3)) {
                    zzeafVar2.d(str3);
                    if (zzdpiVar2 != null) {
                        zzean.Ta(activity2, zzdpiVar2, zzfdkVar2, zzeafVar2, str3, "offline_notification_worker_not_scheduled");
                    }
                }
                com.google.android.gms.ads.internal.zzt.r();
                AlertDialog.Builder builderG2 = com.google.android.gms.ads.internal.util.zzs.g(activity2);
                builderG2.setMessage(resources == null ? "You'll get a notification with the link when you're back online" : resources.getString(R.string.f5702g)).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeai
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface2) {
                        com.google.android.gms.ads.internal.overlay.zzl zzlVar4 = zzlVar2;
                        if (zzlVar4 != null) {
                            zzlVar4.zzb();
                        }
                    }
                });
                AlertDialog alertDialogCreate = builderG2.create();
                alertDialogCreate.show();
                Timer timer = new Timer();
                timer.schedule(new zzeam(alertDialogCreate, timer, zzlVar2), 3000L);
            }
        }).setNegativeButton(resourcesD == null ? "No thanks" : resourcesD.getString(R.string.f5703h), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeak
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                zzeaf zzeafVar2 = zzeafVar;
                String str3 = str;
                zzdpi zzdpiVar2 = zzdpiVar;
                Activity activity2 = activity;
                zzfdk zzfdkVar2 = zzfdkVar;
                com.google.android.gms.ads.internal.overlay.zzl zzlVar2 = zzlVar;
                zzeafVar2.d(str3);
                if (zzdpiVar2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "dismiss");
                    zzean.Ua(activity2, zzdpiVar2, zzfdkVar2, zzeafVar2, str3, "dialog_click", map);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzeal
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzeaf zzeafVar2 = zzeafVar;
                String str3 = str;
                zzdpi zzdpiVar2 = zzdpiVar;
                Activity activity2 = activity;
                zzfdk zzfdkVar2 = zzfdkVar;
                com.google.android.gms.ads.internal.overlay.zzl zzlVar2 = zzlVar;
                zzeafVar2.d(str3);
                if (zzdpiVar2 != null) {
                    HashMap map = new HashMap();
                    map.put("dialog_action", "dismiss");
                    zzean.Ua(activity2, zzdpiVar2, zzfdkVar2, zzeafVar2, str3, "dialog_click", map);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        });
        builderG.create().show();
    }

    private final void Wa(String str, String str2, Map map) {
        Ua(this.f16103o, this.f16104p, this.f16107s, this.f16106r, str, str2, map);
    }

    private static final PendingIntent Xa(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdService");
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra(ShareConstants.MEDIA_URI, str3);
        return zzfla.a(context, 0, intent, zzfla.f18377a | 1073741824, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void Q2(IObjectWrapper iObjectWrapper, String str, String str2) {
        String str3;
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        com.google.android.gms.ads.internal.zzt.s().f(context, "offline_notification_channel", "AdMob Offline Notifications");
        PendingIntent pendingIntentXa = Xa(context, "offline_notification_clicked", str2, str);
        PendingIntent pendingIntentXa2 = Xa(context, "offline_notification_dismissed", str2, str);
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        l.e eVarW = new l.e(context, "offline_notification_channel").k(resourcesD == null ? "View the ad you saved when you were offline" : resourcesD.getString(R.string.f5700e)).j(resourcesD == null ? "Tap to open ad" : resourcesD.getString(R.string.f5699d)).f(true).m(pendingIntentXa2).i(pendingIntentXa).w(context.getApplicationInfo().icon);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        HashMap map = new HashMap();
        try {
            notificationManager.notify(str2, 54321, eVarW.b());
            str3 = "offline_notification_impression";
        } catch (IllegalArgumentException e10) {
            map.put("notification_not_shown_reason", e10.getMessage());
            str3 = "offline_notification_failed";
        }
        Wa(str2, str3, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void c() {
        zzeaf zzeafVar = this.f16106r;
        final zzbzf zzbzfVar = this.f16105q;
        zzeafVar.f(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzeab
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) throws Exception {
                zzeaf.c(zzbzfVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void u1(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra(ShareConstants.MEDIA_URI);
            boolean zX = com.google.android.gms.ads.internal.zzt.q().x(this.f16103o);
            HashMap map = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                map.put("offline_notification_action", "offline_notification_clicked");
                c = true == zX ? (char) 1 : (char) 2;
                map.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                map.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.f16103o;
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    context.startActivity(launchIntentForPackage);
                    map.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    map.put("olaa", "olaf");
                }
            } else {
                map.put("offline_notification_action", "offline_notification_dismissed");
            }
            Wa(stringExtra2, "offline_notification_action", map);
            try {
                SQLiteDatabase writableDatabase = this.f16106r.getWritableDatabase();
                if (c == 1) {
                    this.f16106r.h(writableDatabase, this.f16105q, stringExtra2);
                } else {
                    zzeaf.j(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e10) {
                zzbza.d("Failed to get writable offline buffering database: ".concat(e10.toString()));
            }
        }
    }
}
