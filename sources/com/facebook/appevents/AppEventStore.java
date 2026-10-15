package com.facebook.appevents;

import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;

/* JADX INFO: compiled from: AppEventStore.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppEventStore {
    public static final AppEventStore INSTANCE = new AppEventStore();
    private static final String TAG = AppEventStore.class.getName();

    private AppEventStore() {
    }

    public static final synchronized void persistEvents(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        if (CrashShieldHandler.isObjectCrashing(AppEventStore.class)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppIdPair");
            t9.m.e(sessionEventsState, "appEvents");
            AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
            AppEventUtility.assertIsNotMainThread();
            AppEventDiskStore appEventDiskStore = AppEventDiskStore.INSTANCE;
            PersistedEvents andClearStore = AppEventDiskStore.readAndClearStore();
            andClearStore.addEvents(accessTokenAppIdPair, sessionEventsState.getEventsToPersist());
            AppEventDiskStore.saveEventsToDisk$facebook_core_release(andClearStore);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventStore.class);
        }
    }

    public static final synchronized void persistEvents(AppEventCollection appEventCollection) {
        if (CrashShieldHandler.isObjectCrashing(AppEventStore.class)) {
            return;
        }
        try {
            t9.m.e(appEventCollection, "eventsToPersist");
            AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
            AppEventUtility.assertIsNotMainThread();
            AppEventDiskStore appEventDiskStore = AppEventDiskStore.INSTANCE;
            PersistedEvents andClearStore = AppEventDiskStore.readAndClearStore();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.keySet()) {
                SessionEventsState sessionEventsState = appEventCollection.get(accessTokenAppIdPair);
                if (sessionEventsState != null) {
                    andClearStore.addEvents(accessTokenAppIdPair, sessionEventsState.getEventsToPersist());
                } else {
                    throw new IllegalStateException("Required value was null.".toString());
                }
            }
            AppEventDiskStore appEventDiskStore2 = AppEventDiskStore.INSTANCE;
            AppEventDiskStore.saveEventsToDisk$facebook_core_release(andClearStore);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventStore.class);
        }
    }
}
