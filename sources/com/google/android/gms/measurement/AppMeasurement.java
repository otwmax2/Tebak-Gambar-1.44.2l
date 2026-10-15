package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.measurement.internal.zzgi;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.android.gms.measurement.internal.zzhj;
import com.google.android.gms.measurement.internal.zzio;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
@KeepForSdk
@Deprecated
public class AppMeasurement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile AppMeasurement f23962b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f23963a;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
    @ShowFirstParty
    @KeepForSdk
    public static class ConditionalUserProperty {

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public boolean mActive;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mAppId;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mOrigin;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mTriggerEventName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggeredTimestamp;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        @VisibleForTesting
        ConditionalUserProperty(Bundle bundle) {
            Preconditions.k(bundle);
            this.mAppId = (String) zzhe.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzhe.a(bundle, "origin", String.class, null);
            this.mName = (String) zzhe.a(bundle, "name", String.class, null);
            this.mValue = zzhe.a(bundle, SDKConstants.PARAM_VALUE, Object.class, null);
            this.mTriggerEventName = (String) zzhe.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) zzhe.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzhe.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) zzhe.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) zzhe.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) zzhe.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) zzhe.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzhe.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) zzhe.a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) zzhe.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) zzhe.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) zzhe.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzhi {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzhj {
    }

    public AppMeasurement(zzgi zzgiVar) {
        this.f23963a = new a(zzgiVar);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Keep
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        if (f23962b == null) {
            synchronized (AppMeasurement.class) {
                if (f23962b == null) {
                    zzio zzioVar = (zzio) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (zzioVar != null) {
                        f23962b = new AppMeasurement(zzioVar);
                    } else {
                        f23962b = new AppMeasurement(zzgi.F(context, new zzcl(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return f23962b;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f23963a.b0(str);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f23963a.e(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f23963a.i1(str);
    }

    @Keep
    public long generateEventId() {
        return this.f23963a.zzb();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f23963a.f();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List listA = this.f23963a.a(str, str2);
        ArrayList arrayList = new ArrayList(listA == null ? 0 : listA.size());
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty((Bundle) it.next()));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f23963a.g();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f23963a.h();
    }

    @Keep
    public String getGmpAppId() {
        return this.f23963a.i();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.f23963a.o(str);
    }

    @VisibleForTesting
    @Keep
    protected Map<String, Object> getUserProperties(String str, String str2, boolean z10) {
        return this.f23963a.b(str, str2, z10);
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f23963a.d(str, str2, bundle);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.k(conditionalUserProperty);
        c cVar = this.f23963a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            zzhe.b(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        cVar.c(bundle);
    }

    public AppMeasurement(zzio zzioVar) {
        this.f23963a = new b(zzioVar);
    }
}
