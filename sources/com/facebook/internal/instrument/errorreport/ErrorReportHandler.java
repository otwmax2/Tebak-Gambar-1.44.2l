package com.facebook.internal.instrument.errorreport;

import ba.f;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.errorreport.ErrorReportData;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import i9.p;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: ErrorReportHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ErrorReportHandler {
    public static final ErrorReportHandler INSTANCE = new ErrorReportHandler();
    private static final int MAX_ERROR_REPORT_NUM = 1000;

    private ErrorReportHandler() {
    }

    public static final void enable() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            sendErrorReports();
        }
    }

    public static final File[] listErrorReportFiles() {
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        File instrumentReportDir = InstrumentUtility.getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] fileArrListFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: g3.b
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return ErrorReportHandler.m137listErrorReportFiles$lambda3(file, str);
            }
        });
        m.d(fileArrListFiles, "reportDir.listFiles { dir, name ->\n      name.matches(Regex(String.format(\"^%s[0-9]+.json$\", InstrumentUtility.ERROR_REPORT_PREFIX)))\n    }");
        return fileArrListFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: listErrorReportFiles$lambda-3, reason: not valid java name */
    public static final boolean m137listErrorReportFiles$lambda3(File file, String str) {
        m.d(str, "name");
        b0 b0Var = b0.f35528a;
        String str2 = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{InstrumentUtility.ERROR_REPORT_PREFIX}, 1));
        m.d(str2, "java.lang.String.format(format, *args)");
        return new f(str2).a(str);
    }

    public static final void save(String str) {
        try {
            new ErrorReportData(str).save();
        } catch (Exception unused) {
        }
    }

    public static final void sendErrorReports() {
        Utility utility = Utility.INSTANCE;
        if (Utility.isDataProcessingRestricted()) {
            return;
        }
        File[] fileArrListErrorReportFiles = listErrorReportFiles();
        final ArrayList arrayList = new ArrayList();
        int length = fileArrListErrorReportFiles.length;
        int i10 = 0;
        while (i10 < length) {
            File file = fileArrListErrorReportFiles[i10];
            i10++;
            ErrorReportData errorReportData = new ErrorReportData(file);
            if (errorReportData.isValid()) {
                arrayList.add(errorReportData);
            }
        }
        p.n(arrayList, new Comparator() { // from class: g3.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ErrorReportHandler.m138sendErrorReports$lambda0((ErrorReportData) obj, (ErrorReportData) obj2);
            }
        });
        JSONArray jSONArray = new JSONArray();
        for (int i11 = 0; i11 < arrayList.size() && i11 < 1000; i11++) {
            jSONArray.put(arrayList.get(i11));
        }
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.sendReports("error_reports", jSONArray, new GraphRequest.Callback() { // from class: g3.a
            @Override // com.facebook.GraphRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                ErrorReportHandler.m139sendErrorReports$lambda2(arrayList, graphResponse);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendErrorReports$lambda-0, reason: not valid java name */
    public static final int m138sendErrorReports$lambda0(ErrorReportData errorReportData, ErrorReportData errorReportData2) {
        m.d(errorReportData2, "o2");
        return errorReportData.compareTo(errorReportData2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendErrorReports$lambda-2, reason: not valid java name */
    public static final void m139sendErrorReports$lambda2(ArrayList arrayList, GraphResponse graphResponse) {
        m.e(arrayList, "$validReports");
        m.e(graphResponse, "response");
        try {
            if (graphResponse.getError() == null) {
                JSONObject jsonObject = graphResponse.getJsonObject();
                if (m.a(jsonObject == null ? null : Boolean.valueOf(jsonObject.getBoolean(GraphResponse.SUCCESS_KEY)), Boolean.TRUE)) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ErrorReportData) it.next()).clear();
                    }
                }
            }
        } catch (JSONException unused) {
        }
    }
}
