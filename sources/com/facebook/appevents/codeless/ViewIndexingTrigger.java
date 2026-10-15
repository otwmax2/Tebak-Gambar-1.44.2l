package com.facebook.appevents.codeless;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import t9.m;

/* JADX INFO: compiled from: ViewIndexingTrigger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ViewIndexingTrigger implements SensorEventListener {
    public static final Companion Companion = new Companion(null);
    private static final double SHAKE_THRESHOLD_GRAVITY = 2.3d;
    private OnShakeListener onShakeListener;

    /* JADX INFO: compiled from: ViewIndexingTrigger.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ViewIndexingTrigger.kt */
    public interface OnShakeListener {
        void onShake();
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(sensor, "sensor");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(sensorEvent, "event");
            OnShakeListener onShakeListener = this.onShakeListener;
            if (onShakeListener == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            double d10 = fArr[0] / 9.80665f;
            double d11 = fArr[1] / 9.80665f;
            double d12 = fArr[2] / 9.80665f;
            Double.isNaN(d10);
            Double.isNaN(d10);
            Double.isNaN(d11);
            Double.isNaN(d11);
            Double.isNaN(d12);
            Double.isNaN(d12);
            if (Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12)) > SHAKE_THRESHOLD_GRAVITY) {
                onShakeListener.onShake();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void setOnShakeListener(OnShakeListener onShakeListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.onShakeListener = onShakeListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
