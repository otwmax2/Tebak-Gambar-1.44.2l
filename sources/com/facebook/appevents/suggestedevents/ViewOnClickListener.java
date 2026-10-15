package com.facebook.appevents.suggestedevents;

import android.os.Bundle;
import android.view.View;
import ba.p;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.ViewOnClickListener;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ViewOnClickListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListener implements View.OnClickListener {
    private static final String API_ENDPOINT = "%s/suggested_events";
    public static final String OTHER_EVENT = "other";
    private final String activityName;
    private final View.OnClickListener baseListener;
    private final WeakReference<View> hostViewWeakReference;
    private final WeakReference<View> rootViewWeakReference;
    public static final Companion Companion = new Companion(null);
    private static final Set<Integer> viewsAttachedListener = new HashSet();

    /* JADX INFO: compiled from: ViewOnClickListener.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void processPredictedResult(String str, String str2, float[] fArr) {
            SuggestedEventsManager suggestedEventsManager = SuggestedEventsManager.INSTANCE;
            if (SuggestedEventsManager.isProductionEvents$facebook_core_release(str)) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                new InternalAppEventsLogger(FacebookSdk.getApplicationContext()).logEventFromSE(str, str2);
            } else if (SuggestedEventsManager.isEligibleEvents$facebook_core_release(str)) {
                sendPredictedResult(str, str2, fArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean queryHistoryAndProcess(String str, final String str2) {
            PredictionHistoryManager predictionHistoryManager = PredictionHistoryManager.INSTANCE;
            final String strQueryEvent = PredictionHistoryManager.queryEvent(str);
            if (strQueryEvent == null) {
                return false;
            }
            if (m.a(strQueryEvent, "other")) {
                return true;
            }
            Utility utility = Utility.INSTANCE;
            Utility.runOnNonUiThread(new Runnable() { // from class: c3.d
                @Override // java.lang.Runnable
                public final void run() {
                    ViewOnClickListener.Companion.m74queryHistoryAndProcess$lambda0(strQueryEvent, str2);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: queryHistoryAndProcess$lambda-0, reason: not valid java name */
        public static final void m74queryHistoryAndProcess$lambda0(String str, String str2) {
            m.e(str, "$queriedEvent");
            m.e(str2, "$buttonText");
            ViewOnClickListener.Companion.processPredictedResult(str, str2, new float[0]);
        }

        private final void sendPredictedResult(String str, String str2, float[] fArr) {
            Bundle bundle = new Bundle();
            try {
                bundle.putString("event_name", str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb = new StringBuilder();
                int length = fArr.length;
                int i10 = 0;
                while (i10 < length) {
                    float f10 = fArr[i10];
                    i10++;
                    sb.append(f10);
                    sb.append(",");
                }
                jSONObject.put("dense", sb.toString());
                jSONObject.put("button_text", str2);
                bundle.putString("metadata", jSONObject.toString());
                GraphRequest.Companion companion = GraphRequest.Companion;
                b0 b0Var = b0.f35528a;
                Locale locale = Locale.US;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                String str3 = String.format(locale, ViewOnClickListener.API_ENDPOINT, Arrays.copyOf(new Object[]{FacebookSdk.getApplicationId()}, 1));
                m.d(str3, "java.lang.String.format(locale, format, *args)");
                GraphRequest graphRequestNewPostRequest = companion.newPostRequest(null, str3, null, null);
                graphRequestNewPostRequest.setParameters(bundle);
                graphRequestNewPostRequest.executeAndWait();
            } catch (JSONException unused) {
            }
        }

        public final void attachListener$facebook_core_release(View view, View view2, String str) {
            m.e(view, "hostView");
            m.e(view2, "rootView");
            m.e(str, "activityName");
            int iHashCode = view.hashCode();
            if (ViewOnClickListener.access$getViewsAttachedListener$cp().contains(Integer.valueOf(iHashCode))) {
                return;
            }
            ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
            ViewHierarchy.setOnClickListener(view, new ViewOnClickListener(view, view2, str, null));
            ViewOnClickListener.access$getViewsAttachedListener$cp().add(Integer.valueOf(iHashCode));
        }
    }

    private ViewOnClickListener(View view, View view2, String str) {
        ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
        this.baseListener = ViewHierarchy.getExistingOnClickListener(view);
        this.rootViewWeakReference = new WeakReference<>(view2);
        this.hostViewWeakReference = new WeakReference<>(view);
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        m.d(lowerCase, "(this as java.lang.String).toLowerCase()");
        this.activityName = p.s(lowerCase, "activity", BuildConfig.FLAVOR, false, 4, null);
    }

    public /* synthetic */ ViewOnClickListener(View view, View view2, String str, g gVar) {
        this(view, view2, str);
    }

    public static final /* synthetic */ Set access$getViewsAttachedListener$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return null;
        }
        try {
            return viewsAttachedListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
            return null;
        }
    }

    public static final void attachListener$facebook_core_release(View view, View view2, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return;
        }
        try {
            Companion.attachListener$facebook_core_release(view, view2, str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
        }
    }

    private final void predictAndProcess(final String str, final String str2, final JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            Utility.runOnNonUiThread(new Runnable() { // from class: c3.c
                @Override // java.lang.Runnable
                public final void run() {
                    ViewOnClickListener.m73predictAndProcess$lambda0(jSONObject, str2, this, str);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: predictAndProcess$lambda-0, reason: not valid java name */
    public static final void m73predictAndProcess$lambda0(JSONObject jSONObject, String str, ViewOnClickListener viewOnClickListener, String str2) {
        if (CrashShieldHandler.isObjectCrashing(ViewOnClickListener.class)) {
            return;
        }
        try {
            m.e(jSONObject, "$viewData");
            m.e(str, "$buttonText");
            m.e(viewOnClickListener, "this$0");
            m.e(str2, "$pathID");
            try {
                Utility utility = Utility.INSTANCE;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                String appName = Utility.getAppName(FacebookSdk.getApplicationContext());
                if (appName == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                String lowerCase = appName.toLowerCase();
                m.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                FeatureExtractor featureExtractor = FeatureExtractor.INSTANCE;
                float[] denseFeatures = FeatureExtractor.getDenseFeatures(jSONObject, lowerCase);
                String textFeature = FeatureExtractor.getTextFeature(str, viewOnClickListener.activityName, lowerCase);
                if (denseFeatures == null) {
                    return;
                }
                ModelManager modelManager = ModelManager.INSTANCE;
                String[] strArrPredict = ModelManager.predict(ModelManager.Task.MTML_APP_EVENT_PREDICTION, new float[][]{denseFeatures}, new String[]{textFeature});
                if (strArrPredict == null) {
                    return;
                }
                String str3 = strArrPredict[0];
                PredictionHistoryManager predictionHistoryManager = PredictionHistoryManager.INSTANCE;
                PredictionHistoryManager.addPrediction(str2, str3);
                if (m.a(str3, "other")) {
                    return;
                }
                Companion.processPredictedResult(str3, str, denseFeatures);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewOnClickListener.class);
        }
    }

    private final void process() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            View view = this.rootViewWeakReference.get();
            View view2 = this.hostViewWeakReference.get();
            if (view == null || view2 == null) {
                return;
            }
            try {
                SuggestedEventViewHierarchy suggestedEventViewHierarchy = SuggestedEventViewHierarchy.INSTANCE;
                String textOfViewRecursively = SuggestedEventViewHierarchy.getTextOfViewRecursively(view2);
                PredictionHistoryManager predictionHistoryManager = PredictionHistoryManager.INSTANCE;
                String pathID = PredictionHistoryManager.getPathID(view2, textOfViewRecursively);
                if (pathID == null || Companion.queryHistoryAndProcess(pathID, textOfViewRecursively)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ViewHierarchyConstants.VIEW_KEY, SuggestedEventViewHierarchy.getDictionaryOfView(view, view2));
                jSONObject.put(ViewHierarchyConstants.SCREEN_NAME_KEY, this.activityName);
                predictAndProcess(pathID, textOfViewRecursively, jSONObject);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                m.e(view, ViewHierarchyConstants.VIEW_KEY);
                View.OnClickListener onClickListener = this.baseListener;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                process();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
