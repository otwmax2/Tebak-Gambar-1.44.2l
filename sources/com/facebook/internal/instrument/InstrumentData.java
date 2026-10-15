package com.facebook.internal.instrument;

import android.os.Build;
import ba.p;
import com.facebook.internal.Utility;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: InstrumentData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InstrumentData {
    public static final Companion Companion = new Companion(null);
    private static final String PARAM_APP_VERSION = "app_version";
    private static final String PARAM_CALLSTACK = "callstack";
    private static final String PARAM_DEVICE_MODEL = "device_model";
    private static final String PARAM_DEVICE_OS = "device_os_version";
    private static final String PARAM_FEATURE_NAMES = "feature_names";
    private static final String PARAM_REASON = "reason";
    private static final String PARAM_TIMESTAMP = "timestamp";
    private static final String PARAM_TYPE = "type";
    private static final String UNKNOWN = "Unknown";
    private String appVersion;
    private String cause;
    private JSONArray featureNames;
    private String filename;
    private String stackTrace;
    private Long timestamp;
    private Type type;

    /* JADX INFO: compiled from: InstrumentData.kt */
    public static final class Builder {
        public static final Builder INSTANCE = new Builder();

        private Builder() {
        }

        public static final InstrumentData build(Throwable th, Type type) {
            m.e(type, "t");
            return new InstrumentData(th, type, (g) null);
        }

        public static final InstrumentData load(File file) {
            m.e(file, ShareInternalUtility.STAGING_PARAM);
            return new InstrumentData(file, (g) null);
        }

        public static final InstrumentData build(JSONArray jSONArray) {
            m.e(jSONArray, "features");
            return new InstrumentData(jSONArray, (g) null);
        }

        public static final InstrumentData build(String str, String str2) {
            return new InstrumentData(str, str2, (g) null);
        }
    }

    /* JADX INFO: compiled from: InstrumentData.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Type getType(String str) {
            return p.u(str, InstrumentUtility.CRASH_REPORT_PREFIX, false, 2, null) ? Type.CrashReport : p.u(str, InstrumentUtility.CRASH_SHIELD_PREFIX, false, 2, null) ? Type.CrashShield : p.u(str, InstrumentUtility.THREAD_CHECK_PREFIX, false, 2, null) ? Type.ThreadCheck : p.u(str, InstrumentUtility.ANALYSIS_REPORT_PREFIX, false, 2, null) ? Type.Analysis : p.u(str, InstrumentUtility.ANR_REPORT_PREFIX, false, 2, null) ? Type.AnrReport : Type.Unknown;
        }
    }

    /* JADX INFO: compiled from: InstrumentData.kt */
    public enum Type {
        Unknown,
        Analysis,
        AnrReport,
        CrashReport,
        CrashShield,
        ThreadCheck;

        /* JADX INFO: compiled from: InstrumentData.kt */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.valuesCustom().length];
                iArr[Type.Analysis.ordinal()] = 1;
                iArr[Type.AnrReport.ordinal()] = 2;
                iArr[Type.CrashReport.ordinal()] = 3;
                iArr[Type.CrashShield.ordinal()] = 4;
                iArr[Type.ThreadCheck.ordinal()] = 5;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] typeArrValuesCustom = values();
            return (Type[]) Arrays.copyOf(typeArrValuesCustom, typeArrValuesCustom.length);
        }

        public final String getLogPrefix() {
            int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? "Unknown" : InstrumentUtility.THREAD_CHECK_PREFIX : InstrumentUtility.CRASH_SHIELD_PREFIX : InstrumentUtility.CRASH_REPORT_PREFIX : InstrumentUtility.ANR_REPORT_PREFIX : InstrumentUtility.ANALYSIS_REPORT_PREFIX;
        }

        @Override // java.lang.Enum
        public String toString() {
            int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "AnrReport" : "Analysis";
        }
    }

    /* JADX INFO: compiled from: InstrumentData.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.valuesCustom().length];
            iArr[Type.Analysis.ordinal()] = 1;
            iArr[Type.AnrReport.ordinal()] = 2;
            iArr[Type.CrashReport.ordinal()] = 3;
            iArr[Type.CrashShield.ordinal()] = 4;
            iArr[Type.ThreadCheck.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ InstrumentData(File file, g gVar) {
        this(file);
    }

    public /* synthetic */ InstrumentData(String str, String str2, g gVar) {
        this(str, str2);
    }

    public /* synthetic */ InstrumentData(Throwable th, Type type, g gVar) {
        this(th, type);
    }

    private InstrumentData(JSONArray jSONArray) {
        this.type = Type.Analysis;
        this.timestamp = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        this.featureNames = jSONArray;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(InstrumentUtility.ANALYSIS_REPORT_PREFIX);
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        m.d(string, "StringBuffer()\n            .append(InstrumentUtility.ANALYSIS_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()");
        this.filename = string;
    }

    public /* synthetic */ InstrumentData(JSONArray jSONArray, g gVar) {
        this(jSONArray);
    }

    private final JSONObject getAnalysisReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.featureNames;
            if (jSONArray != null) {
                jSONObject.put(PARAM_FEATURE_NAMES, jSONArray);
            }
            Long l10 = this.timestamp;
            if (l10 != null) {
                jSONObject.put("timestamp", l10);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject getExceptionReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PARAM_DEVICE_OS, Build.VERSION.RELEASE);
            jSONObject.put(PARAM_DEVICE_MODEL, Build.MODEL);
            String str = this.appVersion;
            if (str != null) {
                jSONObject.put(PARAM_APP_VERSION, str);
            }
            Long l10 = this.timestamp;
            if (l10 != null) {
                jSONObject.put("timestamp", l10);
            }
            String str2 = this.cause;
            if (str2 != null) {
                jSONObject.put(PARAM_REASON, str2);
            }
            String str3 = this.stackTrace;
            if (str3 != null) {
                jSONObject.put(PARAM_CALLSTACK, str3);
            }
            Type type = this.type;
            if (type != null) {
                jSONObject.put("type", type);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject getParameters() {
        Type type = this.type;
        int i10 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i10 == 1) {
            return getAnalysisReportParameters();
        }
        if (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) {
            return getExceptionReportParameters();
        }
        return null;
    }

    public final void clear() {
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.deleteFile(this.filename);
    }

    public final int compareTo(InstrumentData instrumentData) {
        m.e(instrumentData, "data");
        Long l10 = this.timestamp;
        if (l10 == null) {
            return -1;
        }
        long jLongValue = l10.longValue();
        Long l11 = instrumentData.timestamp;
        if (l11 == null) {
            return 1;
        }
        return m.g(l11.longValue(), jLongValue);
    }

    public final boolean isValid() {
        Type type = this.type;
        int i10 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if ((i10 != 3 && i10 != 4 && i10 != 5) || this.stackTrace == null || this.timestamp == null) {
                    return false;
                }
            } else if (this.stackTrace == null || this.cause == null || this.timestamp == null) {
                return false;
            }
        } else if (this.featureNames == null || this.timestamp == null) {
            return false;
        }
        return true;
    }

    public final void save() {
        if (isValid()) {
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            InstrumentUtility.writeFile(this.filename, toString());
        }
    }

    public String toString() {
        JSONObject parameters = getParameters();
        if (parameters == null) {
            String string = new JSONObject().toString();
            m.d(string, "JSONObject().toString()");
            return string;
        }
        String string2 = parameters.toString();
        m.d(string2, "params.toString()");
        return string2;
    }

    private InstrumentData(Throwable th, Type type) {
        this.type = type;
        Utility utility = Utility.INSTANCE;
        this.appVersion = Utility.getAppVersion();
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        this.cause = InstrumentUtility.getCause(th);
        this.stackTrace = InstrumentUtility.getStackTrace(th);
        this.timestamp = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(type.getLogPrefix());
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        m.d(string, "StringBuffer().append(t.logPrefix).append(timestamp.toString()).append(\".json\").toString()");
        this.filename = string;
    }

    private InstrumentData(String str, String str2) {
        this.type = Type.AnrReport;
        Utility utility = Utility.INSTANCE;
        this.appVersion = Utility.getAppVersion();
        this.cause = str;
        this.stackTrace = str2;
        this.timestamp = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(InstrumentUtility.ANR_REPORT_PREFIX);
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        m.d(string, "StringBuffer()\n            .append(InstrumentUtility.ANR_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()");
        this.filename = string;
    }

    private InstrumentData(File file) {
        String name = file.getName();
        m.d(name, "file.name");
        this.filename = name;
        this.type = Companion.getType(name);
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        JSONObject file2 = InstrumentUtility.readFile(this.filename, true);
        if (file2 != null) {
            this.timestamp = Long.valueOf(file2.optLong("timestamp", 0L));
            this.appVersion = file2.optString(PARAM_APP_VERSION, null);
            this.cause = file2.optString(PARAM_REASON, null);
            this.stackTrace = file2.optString(PARAM_CALLSTACK, null);
            this.featureNames = file2.optJSONArray(PARAM_FEATURE_NAMES);
        }
    }
}
