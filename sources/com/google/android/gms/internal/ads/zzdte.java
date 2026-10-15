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
public final class zzdte implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f15627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private SensorManager f15628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Sensor f15629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f15630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzdtd f15632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f15633g;

    zzdte(Context context) {
        this.f15627a = context;
    }

    public final void a() {
        synchronized (this) {
            if (this.f15633g) {
                SensorManager sensorManager = this.f15628b;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.f15629c);
                    com.google.android.gms.ads.internal.util.zze.k("Stopped listening for shake gestures.");
                }
                this.f15633g = false;
            }
        }
    }

    public final void b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10266j8)).booleanValue()) {
                if (this.f15628b == null) {
                    SensorManager sensorManager2 = (SensorManager) this.f15627a.getSystemService("sensor");
                    this.f15628b = sensorManager2;
                    if (sensorManager2 == null) {
                        zzbza.g("Shake detection failed to initialize. Failed to obtain accelerometer.");
                        return;
                    }
                    this.f15629c = sensorManager2.getDefaultSensor(1);
                }
                if (!this.f15633g && (sensorManager = this.f15628b) != null && (sensor = this.f15629c) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.f15630d = com.google.android.gms.ads.internal.zzt.b().a() - ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10288l8)).intValue());
                    this.f15633g = true;
                    com.google.android.gms.ads.internal.util.zze.k("Listening for shake gestures.");
                }
            }
        }
    }

    public final void c(zzdtd zzdtdVar) {
        this.f15632f = zzdtdVar;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10266j8)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0] / 9.80665f;
            float f11 = fArr[1] / 9.80665f;
            float f12 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12))) < ((Float) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10277k8)).floatValue()) {
                return;
            }
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            if (this.f15630d + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10288l8)).intValue()) > jA) {
                return;
            }
            if (this.f15630d + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10299m8)).intValue()) < jA) {
                this.f15631e = 0;
            }
            com.google.android.gms.ads.internal.util.zze.k("Shake detected.");
            this.f15630d = jA;
            int i10 = this.f15631e + 1;
            this.f15631e = i10;
            zzdtd zzdtdVar = this.f15632f;
            if (zzdtdVar != null) {
                if (i10 == ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10310n8)).intValue()) {
                    zzdsf zzdsfVar = (zzdsf) zzdtdVar;
                    zzdsfVar.h(new zzdsc(zzdsfVar), zzdse.GESTURE);
                }
            }
        }
    }
}
