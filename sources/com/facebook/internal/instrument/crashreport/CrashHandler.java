package com.facebook.internal.instrument.crashreport;

import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import i9.t;
import i9.y;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.g;
import t9.m;
import y9.l;

/* JADX INFO: compiled from: CrashHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static final int MAX_CRASH_REPORT_NUM = 5;
    private static CrashHandler instance;
    private final Thread.UncaughtExceptionHandler previousHandler;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = CrashHandler.class.getCanonicalName();

    /* JADX INFO: compiled from: CrashHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private final void sendExceptionReports() {
            Utility utility = Utility.INSTANCE;
            if (Utility.isDataProcessingRestricted()) {
                return;
            }
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            File[] fileArrListExceptionReportFiles = InstrumentUtility.listExceptionReportFiles();
            ArrayList arrayList = new ArrayList(fileArrListExceptionReportFiles.length);
            for (File file : fileArrListExceptionReportFiles) {
                InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                arrayList.add(InstrumentData.Builder.load(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((InstrumentData) obj).isValid()) {
                    arrayList2.add(obj);
                }
            }
            final List listM = t.M(arrayList2, new Comparator() { // from class: f3.b
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return CrashHandler.Companion.m135sendExceptionReports$lambda2((InstrumentData) obj2, (InstrumentData) obj3);
                }
            });
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = l.i(0, Math.min(listM.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(listM.get(((y) it).a()));
            }
            InstrumentUtility instrumentUtility2 = InstrumentUtility.INSTANCE;
            InstrumentUtility.sendReports("crash_reports", jSONArray, new GraphRequest.Callback() { // from class: f3.a
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    CrashHandler.Companion.m136sendExceptionReports$lambda5(listM, graphResponse);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: sendExceptionReports$lambda-2, reason: not valid java name */
        public static final int m135sendExceptionReports$lambda2(InstrumentData instrumentData, InstrumentData instrumentData2) {
            m.d(instrumentData2, "o2");
            return instrumentData.compareTo(instrumentData2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: sendExceptionReports$lambda-5, reason: not valid java name */
        public static final void m136sendExceptionReports$lambda5(List list, GraphResponse graphResponse) {
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
        }

        public final synchronized void enable() {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getAutoLogAppEventsEnabled()) {
                sendExceptionReports();
            }
            if (CrashHandler.instance != null) {
                Log.w(CrashHandler.TAG, "Already enabled!");
            } else {
                CrashHandler.instance = new CrashHandler(Thread.getDefaultUncaughtExceptionHandler(), null);
                Thread.setDefaultUncaughtExceptionHandler(CrashHandler.instance);
            }
        }
    }

    private CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.previousHandler = uncaughtExceptionHandler;
    }

    public /* synthetic */ CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, g gVar) {
        this(uncaughtExceptionHandler);
    }

    public static final synchronized void enable() {
        Companion.enable();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        m.e(thread, "t");
        m.e(th, "e");
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        if (InstrumentUtility.isSDKRelatedException(th)) {
            ExceptionAnalyzer exceptionAnalyzer = ExceptionAnalyzer.INSTANCE;
            ExceptionAnalyzer.execute(th);
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.build(th, InstrumentData.Type.CrashReport).save();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.previousHandler;
        if (uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
