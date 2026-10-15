package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.util.Set;

/* JADX INFO: compiled from: BoltsMeasurementEventListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BoltsMeasurementEventListener extends BroadcastReceiver {
    private static final String BOLTS_MEASUREMENT_EVENT_PREFIX = "bf_";
    private static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    private static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    private static BoltsMeasurementEventListener singleton;
    private final Context applicationContext;
    public static final Companion Companion = new Companion(null);
    private static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";

    /* JADX INFO: compiled from: BoltsMeasurementEventListener.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public static /* synthetic */ void getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release$annotations() {
        }

        public final BoltsMeasurementEventListener getInstance(Context context) {
            t9.m.e(context, "context");
            if (BoltsMeasurementEventListener.access$getSingleton$cp() != null) {
                return BoltsMeasurementEventListener.access$getSingleton$cp();
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener = new BoltsMeasurementEventListener(context, null);
            BoltsMeasurementEventListener.access$open(boltsMeasurementEventListener);
            BoltsMeasurementEventListener.access$setSingleton$cp(boltsMeasurementEventListener);
            return BoltsMeasurementEventListener.access$getSingleton$cp();
        }

        public final String getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release() {
            return BoltsMeasurementEventListener.access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp();
        }
    }

    private BoltsMeasurementEventListener(Context context) {
        Context applicationContext = context.getApplicationContext();
        t9.m.d(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    public /* synthetic */ BoltsMeasurementEventListener(Context context, t9.g gVar) {
        this(context);
    }

    public static final /* synthetic */ String access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp() {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return MEASUREMENT_EVENT_NOTIFICATION_NAME;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public static final /* synthetic */ BoltsMeasurementEventListener access$getSingleton$cp() {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return singleton;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$open(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            boltsMeasurementEventListener.open();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
        }
    }

    public static final /* synthetic */ void access$setSingleton$cp(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            singleton = boltsMeasurementEventListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
        }
    }

    private final void close() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            u0.a aVarB = u0.a.b(this.applicationContext);
            t9.m.d(aVarB, "getInstance(applicationContext)");
            aVarB.e(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final BoltsMeasurementEventListener getInstance(Context context) {
        if (CrashShieldHandler.isObjectCrashing(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return Companion.getInstance(context);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    private final void open() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            u0.a aVarB = u0.a.b(this.applicationContext);
            t9.m.d(aVarB, "getInstance(applicationContext)");
            aVarB.c(this, new IntentFilter(MEASUREMENT_EVENT_NOTIFICATION_NAME));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void finalize() throws Throwable {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            close();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
            Set<String> setKeySet = null;
            String strK = t9.m.k(BOLTS_MEASUREMENT_EVENT_PREFIX, intent == null ? null : intent.getStringExtra(MEASUREMENT_EVENT_NAME_KEY));
            Bundle bundleExtra = intent == null ? null : intent.getBundleExtra(MEASUREMENT_EVENT_ARGS_KEY);
            Bundle bundle = new Bundle();
            if (bundleExtra != null) {
                setKeySet = bundleExtra.keySet();
            }
            if (setKeySet != null) {
                for (String str : setKeySet) {
                    t9.m.d(str, SDKConstants.PARAM_KEY);
                    bundle.putString(new ba.f("[ -]*$").b(new ba.f("^[ -]*").b(new ba.f("[^0-9a-zA-Z _-]").b(str, "-"), BuildConfig.FLAVOR), BuildConfig.FLAVOR), (String) bundleExtra.get(str));
                }
            }
            internalAppEventsLogger.logEvent(strK, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
