package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class ProcessUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static String f7649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f7650b;

    private ProcessUtils() {
    }

    @KeepForSdk
    public static String a() throws Throwable {
        BufferedReader bufferedReader;
        if (f7649a == null) {
            int iMyPid = f7650b;
            if (iMyPid == 0) {
                iMyPid = Process.myPid();
                f7650b = iMyPid;
            }
            String strTrim = null;
            strTrim = null;
            strTrim = null;
            BufferedReader bufferedReader2 = null;
            if (iMyPid > 0) {
                try {
                    String str = "/proc/" + iMyPid + "/cmdline";
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        bufferedReader = new BufferedReader(new FileReader(str));
                        try {
                            String line = bufferedReader.readLine();
                            Preconditions.k(line);
                            strTrim = line.trim();
                        } catch (IOException unused) {
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader2 = bufferedReader;
                            IOUtils.b(bufferedReader2);
                            throw th;
                        }
                    } finally {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    }
                } catch (IOException unused2) {
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                IOUtils.b(bufferedReader);
            }
            f7649a = strTrim;
        }
        return f7649a;
    }
}
