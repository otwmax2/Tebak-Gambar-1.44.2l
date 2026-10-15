package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffx extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f18143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzffv f18144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f18145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfgf f18146e;

    public zzffx(Handler handler, Context context, zzffv zzffvVar, zzfgf zzfgfVar, byte[] bArr) {
        super(handler);
        this.f18142a = context;
        this.f18143b = (AudioManager) context.getSystemService("audio");
        this.f18144c = zzffvVar;
        this.f18146e = zzfgfVar;
    }

    private final float c() {
        int streamVolume = this.f18143b.getStreamVolume(3);
        int streamMaxVolume = this.f18143b.getStreamMaxVolume(3);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f10 = streamVolume / streamMaxVolume;
        if (f10 > 1.0f) {
            return 1.0f;
        }
        return f10;
    }

    private final void d() {
        this.f18146e.d(this.f18145d);
    }

    public final void a() {
        this.f18145d = c();
        d();
        this.f18142a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void b() {
        this.f18142a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        super.onChange(z10);
        float fC = c();
        if (fC != this.f18145d) {
            this.f18145d = fC;
            d();
        }
    }
}
