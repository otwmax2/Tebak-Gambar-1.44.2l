package com.vungle.warren.log;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.i;
import com.google.gson.o;
import com.google.gson.q;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.persistence.FilePreferences;
import com.vungle.warren.utility.FileUtility;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class LogSender {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f28109e = "LogSender";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VungleApiClient f28110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FilePreferences f28111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f28112c = b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28113d = a();

    LogSender(VungleApiClient vungleApiClient, FilePreferences filePreferences) {
        this.f28110a = vungleApiClient;
        this.f28111b = filePreferences;
    }

    private int a() {
        return this.f28111b.getInt("batch_id", 0);
    }

    private String b() {
        String string = this.f28111b.getString("device_id", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        this.f28111b.put("device_id", string2);
        this.f28111b.apply();
        return string2;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0035: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:17:0x0035 */
    private i c(File file) throws Throwable {
        BufferedReader bufferedReader;
        Closeable closeable;
        i iVar = new i();
        Closeable closeable2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            FileUtility.closeQuietly(bufferedReader);
                            return iVar;
                        }
                        iVar.t(q.c(line).l());
                    } catch (Exception unused) {
                        Log.e(f28109e, "Invalidate log document file.");
                        FileUtility.closeQuietly(bufferedReader);
                        return null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                FileUtility.closeQuietly(closeable2);
                throw th;
            }
        } catch (Exception unused2) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            FileUtility.closeQuietly(closeable2);
            throw th;
        }
    }

    private void d() {
        this.f28111b.put("batch_id", this.f28113d);
        this.f28111b.apply();
    }

    void e(File[] fileArr) {
        i iVarC;
        for (File file : fileArr) {
            o oVar = new o();
            oVar.v("batch_id", Integer.valueOf(this.f28113d));
            oVar.x("device_guid", this.f28112c);
            try {
                iVarC = c(file);
            } catch (IOException unused) {
                Log.e(f28109e, "Failed to generate request payload.");
            }
            if (iVarC == null) {
                FileUtility.delete(file);
            } else {
                oVar.t("payload", iVarC);
                if (this.f28110a.sendLog(oVar).execute().isSuccessful()) {
                    FileUtility.delete(file);
                }
                if (this.f28113d >= Integer.MAX_VALUE) {
                    this.f28113d = -1;
                }
                this.f28113d++;
            }
        }
        d();
    }
}
