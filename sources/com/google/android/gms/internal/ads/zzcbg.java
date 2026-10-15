package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcbg implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SensorManager f11706a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Display f11708c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("sensorThreadLock")
    private float[] f11711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f11712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzcbf f11713h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f11709d = new float[9];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f11710e = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f11707b = new Object();

    zzcbg(Context context) {
        this.f11706a = (SensorManager) context.getSystemService("sensor");
        this.f11708c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    final void a(zzcbf zzcbfVar) {
        this.f11713h = zzcbfVar;
    }

    final void b() {
        if (this.f11712g != null) {
            return;
        }
        Sensor defaultSensor = this.f11706a.getDefaultSensor(11);
        if (defaultSensor == null) {
            zzbza.d("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        zzfkr zzfkrVar = new zzfkr(handlerThread.getLooper());
        this.f11712g = zzfkrVar;
        if (this.f11706a.registerListener(this, defaultSensor, 0, zzfkrVar)) {
            return;
        }
        zzbza.d("SensorManager.registerListener failed.");
        c();
    }

    final void c() {
        if (this.f11712g == null) {
            return;
        }
        this.f11706a.unregisterListener(this);
        this.f11712g.post(new zzcbe(this));
        this.f11712g = null;
    }

    final boolean d(float[] fArr) {
        synchronized (this.f11707b) {
            float[] fArr2 = this.f11711f;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, 9);
            return true;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.f11707b) {
            if (this.f11711f == null) {
                this.f11711f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f11709d, fArr);
        int rotation = this.f11708c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f11709d, 2, 129, this.f11710e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f11709d, 129, 130, this.f11710e);
        } else if (rotation != 3) {
            System.arraycopy(this.f11709d, 0, this.f11710e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f11709d, 130, 1, this.f11710e);
        }
        float[] fArr2 = this.f11710e;
        float f10 = fArr2[1];
        fArr2[1] = fArr2[3];
        fArr2[3] = f10;
        float f11 = fArr2[2];
        fArr2[2] = fArr2[6];
        fArr2[6] = f11;
        float f12 = fArr2[5];
        fArr2[5] = fArr2[7];
        fArr2[7] = f12;
        synchronized (this.f11707b) {
            System.arraycopy(this.f11710e, 0, this.f11711f, 0, 9);
        }
        zzcbf zzcbfVar = this.f11713h;
        if (zzcbfVar != null) {
            zzcbfVar.zza();
        }
    }
}
