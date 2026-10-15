package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbap implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f10155g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10149a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConditionVariable f10150b = new ConditionVariable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f10151c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    volatile boolean f10152d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SharedPreferences f10153e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f10154f = new Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JSONObject f10156h = new JSONObject();

    private final void f() {
        if (this.f10153e == null) {
            return;
        }
        try {
            this.f10156h = new JSONObject((String) zzbaw.a(new zzfok() { // from class: com.google.android.gms.internal.ads.zzban
                @Override // com.google.android.gms.internal.ads.zzfok
                public final Object zza() {
                    return this.f10147o.d();
                }
            }));
        } catch (JSONException unused) {
        }
    }

    public final Object b(final zzbaj zzbajVar) {
        if (!this.f10150b.block(5000L)) {
            synchronized (this.f10149a) {
                if (!this.f10152d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f10151c || this.f10153e == null) {
            synchronized (this.f10149a) {
                if (this.f10151c && this.f10153e != null) {
                }
                return zzbajVar.m();
            }
        }
        if (zzbajVar.e() != 2) {
            return (zzbajVar.e() == 1 && this.f10156h.has(zzbajVar.n())) ? zzbajVar.a(this.f10156h) : zzbaw.a(new zzfok() { // from class: com.google.android.gms.internal.ads.zzbam
                @Override // com.google.android.gms.internal.ads.zzfok
                public final Object zza() {
                    return this.f10145o.c(zzbajVar);
                }
            });
        }
        Bundle bundle = this.f10154f;
        return bundle == null ? zzbajVar.m() : zzbajVar.b(bundle);
    }

    final /* synthetic */ Object c(zzbaj zzbajVar) {
        return zzbajVar.c(this.f10153e);
    }

    final /* synthetic */ String d() {
        return this.f10153e.getString("flag_configuration", "{}");
    }

    public final void e(Context context) {
        if (this.f10151c) {
            return;
        }
        synchronized (this.f10149a) {
            if (this.f10151c) {
                return;
            }
            if (!this.f10152d) {
                this.f10152d = true;
            }
            Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
            this.f10155g = applicationContext;
            try {
                this.f10154f = Wrappers.a(applicationContext).c(this.f10155g.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            try {
                Context contextD = GooglePlayServicesUtilLight.d(context);
                if (contextD != null || (contextD = context.getApplicationContext()) != null) {
                    context = contextD;
                }
                if (context == null) {
                    return;
                }
                com.google.android.gms.ads.internal.client.zzba.b();
                SharedPreferences sharedPreferencesA = zzbal.a(context);
                this.f10153e = sharedPreferencesA;
                if (sharedPreferencesA != null) {
                    sharedPreferencesA.registerOnSharedPreferenceChangeListener(this);
                }
                zzbdc.c(new zzbao(this));
                f();
                this.f10151c = true;
            } finally {
                this.f10152d = false;
                this.f10150b.open();
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            f();
        }
    }
}
