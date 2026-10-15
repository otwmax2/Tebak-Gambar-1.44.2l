package com.facebook.appevents;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i9.t;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: PersistedEvents.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PersistedEvents implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 20160629001L;
    private final HashMap<AccessTokenAppIdPair, List<AppEvent>> events;

    /* JADX INFO: compiled from: PersistedEvents.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: PersistedEvents.kt */
    public static final class SerializationProxyV1 implements Serializable {
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 20160629001L;
        private final HashMap<AccessTokenAppIdPair, List<AppEvent>> proxyEvents;

        /* JADX INFO: compiled from: PersistedEvents.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public SerializationProxyV1(HashMap<AccessTokenAppIdPair, List<AppEvent>> map) {
            t9.m.e(map, "proxyEvents");
            this.proxyEvents = map;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new PersistedEvents(this.proxyEvents);
        }
    }

    public PersistedEvents() {
        this.events = new HashMap<>();
    }

    private final Object writeReplace() throws ObjectStreamException {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return new SerializationProxyV1(this.events);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final void addEvents(AccessTokenAppIdPair accessTokenAppIdPair, List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppIdPair");
            t9.m.e(list, "appEvents");
            if (!this.events.containsKey(accessTokenAppIdPair)) {
                this.events.put(accessTokenAppIdPair, t.Q(list));
                return;
            }
            List<AppEvent> list2 = this.events.get(accessTokenAppIdPair);
            if (list2 == null) {
                return;
            }
            list2.addAll(list);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final boolean containsKey(AccessTokenAppIdPair accessTokenAppIdPair) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppIdPair");
            return this.events.containsKey(accessTokenAppIdPair);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public final Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> entrySet() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> setEntrySet = this.events.entrySet();
            t9.m.d(setEntrySet, "events.entries");
            return setEntrySet;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final List<AppEvent> get(AccessTokenAppIdPair accessTokenAppIdPair) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            t9.m.e(accessTokenAppIdPair, "accessTokenAppIdPair");
            return this.events.get(accessTokenAppIdPair);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final Set<AccessTokenAppIdPair> keySet() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Set<AccessTokenAppIdPair> setKeySet = this.events.keySet();
            t9.m.d(setKeySet, "events.keys");
            return setKeySet;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public PersistedEvents(HashMap<AccessTokenAppIdPair, List<AppEvent>> map) {
        t9.m.e(map, "appEventMap");
        HashMap<AccessTokenAppIdPair, List<AppEvent>> map2 = new HashMap<>();
        this.events = map2;
        map2.putAll(map);
    }
}
