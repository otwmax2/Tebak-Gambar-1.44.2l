package com.facebook.appevents.aam;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import ba.f;
import ba.q;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.aam.MetadataViewObserver;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: MetadataViewObserver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MetadataViewObserver implements ViewTreeObserver.OnGlobalFocusChangeListener {
    private static final int MAX_TEXT_LENGTH = 100;
    private final WeakReference<Activity> activityWeakReference;
    private final AtomicBoolean isTracking;
    private final Set<String> processedText;
    private final Handler uiThreadHandler;
    public static final Companion Companion = new Companion(null);
    private static final Map<Integer, MetadataViewObserver> observers = new HashMap();

    /* JADX INFO: compiled from: MetadataViewObserver.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String preNormalize(String str, String str2) {
            return m.a("r2", str) ? new f("[^\\d.]").b(str2, BuildConfig.FLAVOR) : str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void putUserData(java.util.Map<java.lang.String, java.lang.String> r6, java.lang.String r7, java.lang.String r8) {
            /*
                r5 = this;
                int r0 = r7.hashCode()
                r1 = 0
                r2 = 2
                r3 = 0
                switch(r0) {
                    case 3585: goto L57;
                    case 3586: goto L40;
                    case 3587: goto L37;
                    case 3588: goto Lc;
                    default: goto La;
                }
            La:
                goto L7d
            Lc:
                java.lang.String r0 = "r6"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L16
                goto L7d
            L16:
                java.lang.String r0 = "-"
                boolean r1 = ba.g.x(r8, r0, r3, r2, r1)
                if (r1 == 0) goto L7d
                ba.f r1 = new ba.f
                r1.<init>(r0)
                java.util.List r8 = r1.c(r8, r3)
                java.lang.String[] r0 = new java.lang.String[r3]
                java.lang.Object[] r8 = r8.toArray(r0)
                java.lang.String r0 = "null cannot be cast to non-null type kotlin.Array<T>"
                java.util.Objects.requireNonNull(r8, r0)
                java.lang.String[] r8 = (java.lang.String[]) r8
                r8 = r8[r3]
                goto L7d
            L37:
                java.lang.String r0 = "r5"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L49
                goto L7d
            L40:
                java.lang.String r0 = "r4"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L49
                goto L7d
            L49:
                ba.f r0 = new ba.f
                java.lang.String r1 = "[^a-z]+"
                r0.<init>(r1)
                java.lang.String r1 = ""
                java.lang.String r8 = r0.b(r8, r1)
                goto L7d
            L57:
                java.lang.String r0 = "r3"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L60
                goto L7d
            L60:
                java.lang.String r0 = "m"
                boolean r4 = ba.g.u(r8, r0, r3, r2, r1)
                if (r4 != 0) goto L7c
                java.lang.String r4 = "b"
                boolean r4 = ba.g.u(r8, r4, r3, r2, r1)
                if (r4 != 0) goto L7c
                java.lang.String r4 = "ge"
                boolean r8 = ba.g.u(r8, r4, r3, r2, r1)
                if (r8 == 0) goto L79
                goto L7c
            L79:
                java.lang.String r8 = "f"
                goto L7d
            L7c:
                r8 = r0
            L7d:
                r6.put(r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.aam.MetadataViewObserver.Companion.putUserData(java.util.Map, java.lang.String, java.lang.String):void");
        }

        public final void startTrackingActivity(Activity activity) {
            m.e(activity, "activity");
            int iHashCode = activity.hashCode();
            Map mapAccess$getObservers$cp = MetadataViewObserver.access$getObservers$cp();
            Integer numValueOf = Integer.valueOf(iHashCode);
            Object metadataViewObserver = mapAccess$getObservers$cp.get(numValueOf);
            if (metadataViewObserver == null) {
                metadataViewObserver = new MetadataViewObserver(activity, null);
                mapAccess$getObservers$cp.put(numValueOf, metadataViewObserver);
            }
            MetadataViewObserver.access$startTracking((MetadataViewObserver) metadataViewObserver);
        }

        public final void stopTrackingActivity(Activity activity) {
            m.e(activity, "activity");
            MetadataViewObserver metadataViewObserver = (MetadataViewObserver) MetadataViewObserver.access$getObservers$cp().remove(Integer.valueOf(activity.hashCode()));
            if (metadataViewObserver == null) {
                return;
            }
            MetadataViewObserver.access$stopTracking(metadataViewObserver);
        }
    }

    private MetadataViewObserver(Activity activity) {
        this.processedText = new LinkedHashSet();
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        this.activityWeakReference = new WeakReference<>(activity);
        this.isTracking = new AtomicBoolean(false);
    }

    public /* synthetic */ MetadataViewObserver(Activity activity, g gVar) {
        this(activity);
    }

    public static final /* synthetic */ Map access$getObservers$cp() {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return null;
        }
        try {
            return observers;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$startTracking(MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    public static final /* synthetic */ void access$stopTracking(MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.stopTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void process(final View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            runOnUIThread(new Runnable() { // from class: a3.b
                @Override // java.lang.Runnable
                public final void run() {
                    MetadataViewObserver.m43process$lambda0(view, this);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: process$lambda-0, reason: not valid java name */
    public static final void m43process$lambda0(View view, MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            m.e(view, "$view");
            m.e(metadataViewObserver, "this$0");
            if (view instanceof EditText) {
                metadataViewObserver.processEditText(view);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void processEditText(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            String string = ((EditText) view).getText().toString();
            if (string == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String string2 = q.p0(string).toString();
            if (string2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = string2.toLowerCase();
            m.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (!(lowerCase.length() == 0) && !this.processedText.contains(lowerCase) && lowerCase.length() <= 100) {
                this.processedText.add(lowerCase);
                HashMap map = new HashMap();
                MetadataMatcher metadataMatcher = MetadataMatcher.INSTANCE;
                List<String> currentViewIndicators = MetadataMatcher.getCurrentViewIndicators(view);
                List<String> aroundViewIndicators = null;
                for (MetadataRule metadataRule : MetadataRule.Companion.getRules()) {
                    Companion companion = Companion;
                    String strPreNormalize = companion.preNormalize(metadataRule.getName(), lowerCase);
                    if (metadataRule.getValRule().length() > 0) {
                        MetadataMatcher metadataMatcher2 = MetadataMatcher.INSTANCE;
                        if (!MetadataMatcher.matchValue(strPreNormalize, metadataRule.getValRule())) {
                        }
                    }
                    MetadataMatcher metadataMatcher3 = MetadataMatcher.INSTANCE;
                    if (MetadataMatcher.matchIndicator(currentViewIndicators, metadataRule.getKeyRules())) {
                        companion.putUserData(map, metadataRule.getName(), strPreNormalize);
                    } else {
                        if (aroundViewIndicators == null) {
                            aroundViewIndicators = MetadataMatcher.getAroundViewIndicators(view);
                        }
                        if (MetadataMatcher.matchIndicator(aroundViewIndicators, metadataRule.getKeyRules())) {
                            companion.putUserData(map, metadataRule.getName(), strPreNormalize);
                        }
                    }
                }
                InternalAppEventsLogger.Companion.setInternalUserData(map);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void runOnUIThread(Runnable runnable) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.uiThreadHandler.post(runnable);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.isTracking.getAndSet(true)) {
                return;
            }
            AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
            View rootView = AppEventUtility.getRootView(this.activityWeakReference.get());
            if (rootView == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalFocusChangeListener(this);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void startTrackingActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            Companion.startTrackingActivity(activity);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private final void stopTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.isTracking.getAndSet(false)) {
                AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                View rootView = AppEventUtility.getRootView(this.activityWeakReference.get());
                if (rootView == null) {
                    return;
                }
                ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnGlobalFocusChangeListener(this);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void stopTrackingActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            Companion.stopTrackingActivity(activity);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        if (view != null) {
            try {
                process(view);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return;
            }
        }
        if (view2 != null) {
            process(view2);
        }
    }
}
