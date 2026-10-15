package com.facebook.internal.instrument;

import ba.d;
import ba.f;
import ba.p;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: InstrumentUtility.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InstrumentUtility {
    public static final String ANALYSIS_REPORT_PREFIX = "analysis_log_";
    public static final String ANR_REPORT_PREFIX = "anr_log_";
    private static final String CODELESS_PREFIX = "com.facebook.appevents.codeless";
    public static final String CRASH_REPORT_PREFIX = "crash_log_";
    public static final String CRASH_SHIELD_PREFIX = "shield_log_";
    public static final String ERROR_REPORT_PREFIX = "error_log_";
    private static final String FBSDK_PREFIX = "com.facebook";
    public static final InstrumentUtility INSTANCE = new InstrumentUtility();
    private static final String INSTRUMENT_DIR = "instrument";
    private static final String METASDK_PREFIX = "com.meta";
    private static final String SUGGESTED_EVENTS_PREFIX = "com.facebook.appevents.suggestedevents";
    public static final String THREAD_CHECK_PREFIX = "thread_check_log_";

    private InstrumentUtility() {
    }

    public static final boolean deleteFile(String str) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null) {
            return false;
        }
        return new File(instrumentReportDir, str).delete();
    }

    public static final String getCause(Throwable th) {
        if (th == null) {
            return null;
        }
        return th.getCause() == null ? th.toString() : String.valueOf(th.getCause());
    }

    public static final File getInstrumentReportDir() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        File file = new File(FacebookSdk.getApplicationContext().getCacheDir(), INSTRUMENT_DIR);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static final String getStackTrace(Throwable th) {
        Throwable th2 = null;
        if (th == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            m.d(stackTrace, "t.stackTrace");
            int i10 = 0;
            int length = stackTrace.length;
            while (i10 < length) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                i10++;
                jSONArray.put(stackTraceElement.toString());
            }
            th2 = th;
            th = th.getCause();
        }
        return jSONArray.toString();
    }

    public static final boolean isFromFbOrMeta(StackTraceElement stackTraceElement) {
        m.e(stackTraceElement, "element");
        String className = stackTraceElement.getClassName();
        m.d(className, "element.className");
        if (!p.u(className, "com.facebook", false, 2, null)) {
            String className2 = stackTraceElement.getClassName();
            m.d(className2, "element.className");
            if (!p.u(className2, METASDK_PREFIX, false, 2, null)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isSDKRelatedException(Throwable th) {
        if (th == null) {
            return false;
        }
        Throwable th2 = null;
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            m.d(stackTrace, "t.stackTrace");
            int length = stackTrace.length;
            int i10 = 0;
            while (i10 < length) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                i10++;
                m.d(stackTraceElement, "element");
                if (isFromFbOrMeta(stackTraceElement)) {
                    return true;
                }
            }
            th2 = th;
            th = th.getCause();
        }
        return false;
    }

    public static final boolean isSDKRelatedThread(Thread thread) {
        StackTraceElement[] stackTrace;
        if (thread != null && (stackTrace = thread.getStackTrace()) != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                m.d(stackTraceElement, "element");
                if (isFromFbOrMeta(stackTraceElement)) {
                    String className = stackTraceElement.getClassName();
                    m.d(className, "element.className");
                    if (!p.u(className, CODELESS_PREFIX, false, 2, null)) {
                        String className2 = stackTraceElement.getClassName();
                        m.d(className2, "element.className");
                        if (!p.u(className2, SUGGESTED_EVENTS_PREFIX, false, 2, null)) {
                            return true;
                        }
                    }
                    String methodName = stackTraceElement.getMethodName();
                    m.d(methodName, "element.methodName");
                    if (p.u(methodName, "onClick", false, 2, null)) {
                        continue;
                    } else {
                        String methodName2 = stackTraceElement.getMethodName();
                        m.d(methodName2, "element.methodName");
                        if (p.u(methodName2, "onItemClick", false, 2, null)) {
                            continue;
                        } else {
                            String methodName3 = stackTraceElement.getMethodName();
                            m.d(methodName3, "element.methodName");
                            if (!p.u(methodName3, "onTouch", false, 2, null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final File[] listAnrReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] fileArrListFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: d3.e
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return InstrumentUtility.m129listAnrReportFiles$lambda1(file, str);
            }
        });
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: listAnrReportFiles$lambda-1, reason: not valid java name */
    public static final boolean m129listAnrReportFiles$lambda1(File file, String str) {
        m.d(str, "name");
        b0 b0Var = b0.f35528a;
        String str2 = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANR_REPORT_PREFIX}, 1));
        m.d(str2, "java.lang.String.format(format, *args)");
        return new f(str2).a(str);
    }

    public static final File[] listExceptionAnalysisReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] fileArrListFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: d3.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return InstrumentUtility.m130listExceptionAnalysisReportFiles$lambda2(file, str);
            }
        });
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: listExceptionAnalysisReportFiles$lambda-2, reason: not valid java name */
    public static final boolean m130listExceptionAnalysisReportFiles$lambda2(File file, String str) {
        m.d(str, "name");
        b0 b0Var = b0.f35528a;
        String str2 = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANALYSIS_REPORT_PREFIX}, 1));
        m.d(str2, "java.lang.String.format(format, *args)");
        return new f(str2).a(str);
    }

    public static final File[] listExceptionReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] fileArrListFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: d3.g
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return InstrumentUtility.m131listExceptionReportFiles$lambda3(file, str);
            }
        });
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: listExceptionReportFiles$lambda-3, reason: not valid java name */
    public static final boolean m131listExceptionReportFiles$lambda3(File file, String str) {
        m.d(str, "name");
        b0 b0Var = b0.f35528a;
        String str2 = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{CRASH_REPORT_PREFIX, CRASH_SHIELD_PREFIX, THREAD_CHECK_PREFIX}, 3));
        m.d(str2, "java.lang.String.format(format, *args)");
        return new f(str2).a(str);
    }

    public static final JSONObject readFile(String str, boolean z10) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir != null && str != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(instrumentReportDir, str));
                Utility utility = Utility.INSTANCE;
                return new JSONObject(Utility.readStreamToString(fileInputStream));
            } catch (Exception unused) {
                if (z10) {
                    deleteFile(str);
                }
            }
        }
        return null;
    }

    public static final void sendReports(String str, JSONArray jSONArray, GraphRequest.Callback callback) {
        m.e(jSONArray, "reports");
        if (jSONArray.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, jSONArray.toString());
            Utility utility = Utility.INSTANCE;
            JSONObject dataProcessingOptions = Utility.getDataProcessingOptions();
            if (dataProcessingOptions != null) {
                Iterator<String> itKeys = dataProcessingOptions.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.put(next, dataProcessingOptions.get(next));
                }
            }
            GraphRequest.Companion companion = GraphRequest.Companion;
            b0 b0Var = b0.f35528a;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            String str2 = String.format("%s/instruments", Arrays.copyOf(new Object[]{FacebookSdk.getApplicationId()}, 1));
            m.d(str2, "java.lang.String.format(format, *args)");
            companion.newPostRequest(null, str2, jSONObject, callback).executeAsync();
        } catch (JSONException unused) {
        }
    }

    public static final void writeFile(String str, String str2) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(instrumentReportDir, str));
            byte[] bytes = str2.getBytes(d.f4713b);
            m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    public static final String getStackTrace(Thread thread) {
        m.e(thread, "thread");
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONArray jSONArray = new JSONArray();
        m.d(stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i10 = 0;
        while (i10 < length) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            i10++;
            jSONArray.put(stackTraceElement.toString());
        }
        return jSONArray.toString();
    }
}
