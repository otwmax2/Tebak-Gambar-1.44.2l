package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.b;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzhm implements zzhj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static zzhm f23534c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Context f23535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final ContentObserver f23536b;

    private zzhm() {
        this.f23535a = null;
        this.f23536b = null;
    }

    private zzhm(Context context) {
        this.f23535a = context;
        zzhl zzhlVar = new zzhl(this, null);
        this.f23536b = zzhlVar;
        context.getContentResolver().registerContentObserver(zzgz.f23505a, true, zzhlVar);
    }

    static zzhm a(Context context) {
        zzhm zzhmVar;
        synchronized (zzhm.class) {
            if (f23534c == null) {
                f23534c = b.c(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzhm(context) : new zzhm();
            }
            zzhmVar = f23534c;
        }
        return zzhmVar;
    }

    static synchronized void d() {
        Context context;
        zzhm zzhmVar = f23534c;
        if (zzhmVar != null && (context = zzhmVar.f23535a) != null && zzhmVar.f23536b != null) {
            context.getContentResolver().unregisterContentObserver(f23534c.f23536b);
        }
        f23534c = null;
    }

    @Override // com.google.android.gms.internal.measurement.zzhj
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String u(final String str) {
        if (this.f23535a == null) {
            return null;
        }
        try {
            return (String) zzhh.a(new zzhi() { // from class: com.google.android.gms.internal.measurement.zzhk
                @Override // com.google.android.gms.internal.measurement.zzhi
                public final Object zza() {
                    return this.f23532a.c(str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException e10) {
            Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e10);
            return null;
        }
    }

    final /* synthetic */ String c(String str) {
        return zzgz.a(this.f23535a.getContentResolver(), str, null);
    }
}
