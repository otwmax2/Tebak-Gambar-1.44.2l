package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.l;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabw;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zal;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6915c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f6913e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final GoogleApiAvailability f6914f = new GoogleApiAvailability();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6912d = GoogleApiAvailabilityLight.f6916a;

    public static GoogleApiAvailability p() {
        return f6914f;
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public Intent d(Context context, int i10, String str) {
        return super.d(context, i10, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public PendingIntent e(Context context, int i10, int i11) {
        return super.e(context, i10, i11);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final String g(int i10) {
        return super.g(i10);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    public int i(Context context) {
        return super.i(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public int j(Context context, int i10) {
        return super.j(context, i10);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean m(int i10) {
        return super.m(i10);
    }

    public Dialog n(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        return s(activity, i10, zag.b(activity, d(activity, i10, "d"), i11), onCancelListener);
    }

    public PendingIntent o(Context context, ConnectionResult connectionResult) {
        return connectionResult.Y3() ? connectionResult.X3() : e(context, connectionResult.V3(), 0);
    }

    public boolean q(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogN = n(activity, i10, i11, onCancelListener);
        if (dialogN == null) {
            return false;
        }
        v(activity, dialogN, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public void r(Context context, int i10) {
        w(context, i10, null, f(context, i10, 0, "n"));
    }

    final Dialog s(Context context, int i10, zag zagVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i10 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(zac.d(context, i10));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strC = zac.c(context, i10);
        if (strC != null) {
            builder.setPositiveButton(strC, zagVar);
        }
        String strG = zac.g(context, i10);
        if (strG != null) {
            builder.setTitle(strG);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i10)), new IllegalArgumentException());
        return builder.create();
    }

    public final Dialog t(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, android.R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(zac.d(activity, 18));
        builder.setPositiveButton(BuildConfig.FLAVOR, (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        v(activity, alertDialogCreate, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return alertDialogCreate;
    }

    public final zabx u(Context context, zabw zabwVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabx zabxVar = new zabx(zabwVar);
        context.registerReceiver(zabxVar, intentFilter);
        zabxVar.a(context);
        if (l(context, "com.google.android.gms")) {
            return zabxVar;
        }
        zabwVar.a();
        zabxVar.b();
        return null;
    }

    final void v(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof androidx.fragment.app.e) {
                SupportErrorDialogFragment.o(dialog, onCancelListener).show(((androidx.fragment.app.e) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    final void w(Context context, int i10, String str, PendingIntent pendingIntent) {
        int i11;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i10), null), new IllegalArgumentException());
        if (i10 == 18) {
            x(context);
            return;
        }
        if (pendingIntent == null) {
            if (i10 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strF = zac.f(context, i10);
        String strE = zac.e(context, i10);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) Preconditions.k(context.getSystemService("notification"));
        l.e eVarY = new l.e(context).q(true).f(true).k(strF).y(new l.c().h(strE));
        if (DeviceProperties.f(context)) {
            Preconditions.n(PlatformVersion.f());
            eVarY.w(context.getApplicationInfo().icon).t(2);
            if (DeviceProperties.g(context)) {
                eVarY.a(com.google.android.gms.base.R.drawable.f6812a, resources.getString(com.google.android.gms.base.R.string.f6831o), pendingIntent);
            } else {
                eVarY.i(pendingIntent);
            }
        } else {
            eVarY.w(android.R.drawable.stat_sys_warning).z(resources.getString(com.google.android.gms.base.R.string.f6824h)).C(System.currentTimeMillis()).i(pendingIntent).j(strE);
        }
        if (PlatformVersion.j()) {
            Preconditions.n(PlatformVersion.j());
            synchronized (f6913e) {
                str2 = this.f6915c;
            }
            if (str2 == null) {
                str2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String strB = zac.b(context);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", strB, 4));
                } else if (!strB.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(strB);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            eVarY.g(str2);
        }
        Notification notificationB = eVarY.b();
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            GooglePlayServicesUtilLight.f6922b.set(false);
            i11 = 10436;
        } else {
            i11 = 39789;
        }
        notificationManager.notify(i11, notificationB);
    }

    final void x(Context context) {
        new a(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean y(Activity activity, LifecycleFragment lifecycleFragment, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogS = s(activity, i10, zag.c(lifecycleFragment, d(activity, i10, "d"), 2), onCancelListener);
        if (dialogS == null) {
            return false;
        }
        v(activity, dialogS, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public final boolean z(Context context, ConnectionResult connectionResult, int i10) {
        PendingIntent pendingIntentO;
        if (InstantApps.a(context) || (pendingIntentO = o(context, connectionResult)) == null) {
            return false;
        }
        w(context, connectionResult.V3(), null, zal.a(context, 0, GoogleApiActivity.a(context, pendingIntentO, i10, true), zal.f21666a | 134217728));
        return true;
    }
}
