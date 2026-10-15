package com.facebook.internal.instrument.anrreport;

import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i9.t;
import i9.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;
import y9.l;

/* JADX INFO: compiled from: ANRHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ANRHandler {
    private static final int MAX_ANR_REPORT_NUM = 5;
    public static final ANRHandler INSTANCE = new ANRHandler();
    private static final AtomicBoolean enabled = new AtomicBoolean(false);

    private ANRHandler() {
    }

    public static final synchronized void enable() {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            if (enabled.getAndSet(true)) {
                return;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getAutoLogAppEventsEnabled()) {
                sendANRReports();
            }
            ANRDetector aNRDetector = ANRDetector.INSTANCE;
            ANRDetector.start();
            return;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
            return;
        }
    }

    public static final void sendANRReports() {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            if (Utility.isDataProcessingRestricted()) {
                return;
            }
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            File[] fileArrListAnrReportFiles = InstrumentUtility.listAnrReportFiles();
            ArrayList arrayList = new ArrayList(fileArrListAnrReportFiles.length);
            for (File file : fileArrListAnrReportFiles) {
                InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                arrayList.add(InstrumentData.Builder.load(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((InstrumentData) obj).isValid()) {
                    arrayList2.add(obj);
                }
            }
            final List listM = t.M(arrayList2, new Comparator() { // from class: e3.c
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return ANRHandler.m133sendANRReports$lambda2((InstrumentData) obj2, (InstrumentData) obj3);
                }
            });
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = l.i(0, Math.min(listM.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(listM.get(((y) it).a()));
            }
            InstrumentUtility instrumentUtility2 = InstrumentUtility.INSTANCE;
            InstrumentUtility.sendReports("anr_reports", jSONArray, new GraphRequest.Callback() { // from class: e3.b
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    ANRHandler.m134sendANRReports$lambda5(listM, graphResponse);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendANRReports$lambda-2, reason: not valid java name */
    public static final int m133sendANRReports$lambda2(InstrumentData instrumentData, InstrumentData instrumentData2) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return 0;
        }
        try {
            m.d(instrumentData2, "o2");
            return instrumentData.compareTo(instrumentData2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendANRReports$lambda-5, reason: not valid java name */
    public static final void m134sendANRReports$lambda5(List list, GraphResponse graphResponse) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            m.e(list, "$validReports");
            m.e(graphResponse, "response");
            try {
                if (graphResponse.getError() == null) {
                    JSONObject jsonObject = graphResponse.getJsonObject();
                    if (m.a(jsonObject == null ? null : Boolean.valueOf(jsonObject.getBoolean(GraphResponse.SUCCESS_KEY)), Boolean.TRUE)) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ((InstrumentData) it.next()).clear();
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
        }
    }
}
