package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import h9.t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SessionEventsState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SessionEventsState {
    private List<AppEvent> accumulatedEvents;
    private final String anonymousAppDeviceGUID;
    private final AttributionIdentifiers attributionIdentifiers;
    private final List<AppEvent> inFlightEvents;
    private int numSkippedEventsDueToFullBuffer;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = SessionEventsState.class.getSimpleName();
    private static final int MAX_ACCUMULATED_LOG_EVENTS = 1000;

    /* JADX INFO: compiled from: SessionEventsState.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    public SessionEventsState(AttributionIdentifiers attributionIdentifiers, String str) {
        t9.m.e(attributionIdentifiers, "attributionIdentifiers");
        t9.m.e(str, "anonymousAppDeviceGUID");
        this.attributionIdentifiers = attributionIdentifiers;
        this.anonymousAppDeviceGUID = str;
        this.accumulatedEvents = new ArrayList();
        this.inFlightEvents = new ArrayList();
    }

    public final synchronized void accumulatePersistedEvents(List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            t9.m.e(list, "events");
            this.accumulatedEvents.addAll(list);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final synchronized void addEvent(AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            t9.m.e(appEvent, "event");
            if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= MAX_ACCUMULATED_LOG_EVENTS) {
                this.numSkippedEventsDueToFullBuffer++;
            } else {
                this.accumulatedEvents.add(appEvent);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final synchronized void clearInFlightAndStats(boolean z10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        if (!z10) {
            this.inFlightEvents.clear();
            this.numSkippedEventsDueToFullBuffer = 0;
            return;
        }
        try {
            this.accumulatedEvents.addAll(this.inFlightEvents);
            this.inFlightEvents.clear();
            this.numSkippedEventsDueToFullBuffer = 0;
            return;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return;
        }
    }

    public final synchronized int getAccumulatedEventCount() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.accumulatedEvents.size();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    public final synchronized List<AppEvent> getEventsToPersist() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            List<AppEvent> list = this.accumulatedEvents;
            this.accumulatedEvents = new ArrayList();
            return list;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final int populateRequest(GraphRequest graphRequest, Context context, boolean z10, boolean z11) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            t9.m.e(graphRequest, "request");
            t9.m.e(context, "applicationContext");
            synchronized (this) {
                int i10 = this.numSkippedEventsDueToFullBuffer;
                EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
                EventDeactivationManager.processEvents(this.accumulatedEvents);
                this.inFlightEvents.addAll(this.accumulatedEvents);
                this.accumulatedEvents.clear();
                JSONArray jSONArray = new JSONArray();
                for (AppEvent appEvent : this.inFlightEvents) {
                    if (!appEvent.isChecksumValid()) {
                        Utility utility = Utility.INSTANCE;
                        Utility.logd(TAG, t9.m.k("Event with invalid checksum: ", appEvent));
                    } else if (z10 || !appEvent.isImplicit()) {
                        jSONArray.put(appEvent.getJsonObject());
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                t tVar = t.f30301a;
                populateRequest(graphRequest, context, i10, jSONArray, z11);
                return jSONArray.length();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    private final void populateRequest(GraphRequest graphRequest, Context context, int i10, JSONArray jSONArray, boolean z10) {
        JSONObject jSONObject;
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                jSONObject = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.attributionIdentifiers, this.anonymousAppDeviceGUID, z10, context);
                if (this.numSkippedEventsDueToFullBuffer > 0) {
                    jSONObject.put("num_skipped_events", i10);
                }
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            graphRequest.setGraphObject(jSONObject);
            Bundle parameters = graphRequest.getParameters();
            String string = jSONArray.toString();
            t9.m.d(string, "events.toString()");
            parameters.putString("custom_events", string);
            graphRequest.setTag(string);
            graphRequest.setParameters(parameters);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
