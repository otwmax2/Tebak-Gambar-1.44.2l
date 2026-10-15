package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdrr implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final SensorManager f15490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Sensor f15491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f15492c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Float f15493d = Float.valueOf(0.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f15494e = com.google.android.gms.ads.internal.zzt.b().a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15495f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f15496g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15497h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private zzdrq f15498i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f15499j = false;

    zzdrr(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f15490a = sensorManager;
        if (sensorManager != null) {
            this.f15491b = sensorManager.getDefaultSensor(4);
        } else {
            this.f15491b = null;
        }
    }

    public final void a() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (this.f15499j && (sensorManager = this.f15490a) != null && (sensor = this.f15491b) != null) {
                sensorManager.unregisterListener(this, sensor);
                this.f15499j = false;
                com.google.android.gms.ads.internal.util.zze.k("Stopped listening for flick gestures.");
            }
        }
    }

    public final void b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10321o8)).booleanValue()) {
                if (!this.f15499j && (sensorManager = this.f15490a) != null && (sensor = this.f15491b) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.f15499j = true;
                    com.google.android.gms.ads.internal.util.zze.k("Listening for flick gestures.");
                }
                if (this.f15490a == null || this.f15491b == null) {
                    zzbza.g("Flick detection failed to initialize. Failed to obtain gyroscope.");
                }
            }
        }
    }

    public final void c(zzdrq zzdrqVar) {
        this.f15498i = zzdrqVar;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10321o8)).booleanValue()) {
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            if (this.f15494e + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10343q8)).intValue()) < jA) {
                this.f15495f = 0;
                this.f15494e = jA;
                this.f15496g = false;
                this.f15497h = false;
                this.f15492c = this.f15493d.floatValue();
            }
            Float fValueOf = Float.valueOf(this.f15493d.floatValue() + (sensorEvent.values[1] * 4.0f));
            this.f15493d = fValueOf;
            float fFloatValue = fValueOf.floatValue();
            float f10 = this.f15492c;
            zzbaj zzbajVar = zzbar.f10332p8;
            if (fFloatValue > f10 + ((Float) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).floatValue()) {
                this.f15492c = this.f15493d.floatValue();
                this.f15497h = true;
            } else if (this.f15493d.floatValue() < this.f15492c - ((Float) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).floatValue()) {
                this.f15492c = this.f15493d.floatValue();
                this.f15496g = true;
            }
            if (this.f15493d.isInfinite()) {
                this.f15493d = Float.valueOf(0.0f);
                this.f15492c = 0.0f;
            }
            if (this.f15496g && this.f15497h) {
                com.google.android.gms.ads.internal.util.zze.k("Flick detected.");
                this.f15494e = jA;
                int i10 = this.f15495f + 1;
                this.f15495f = i10;
                this.f15496g = false;
                this.f15497h = false;
                zzdrq zzdrqVar = this.f15498i;
                if (zzdrqVar != null) {
                    if (i10 == ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10354r8)).intValue()) {
                        zzdsf zzdsfVar = (zzdsf) zzdrqVar;
                        zzdsfVar.h(new zzdsd(zzdsfVar), zzdse.GESTURE);
                    }
                }
            }
        }
    }
}
