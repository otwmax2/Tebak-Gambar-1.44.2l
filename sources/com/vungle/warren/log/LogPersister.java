package com.vungle.warren.log;

import android.util.Log;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.log.LogManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.LineNumberReader;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class LogPersister {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f28098f = "LogPersister";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f28099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28101c = 100;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f28102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LogManager.SdkLoggingEventListener f28103e;

    LogPersister(File file) {
        if (file != null) {
            File fileE = e(file);
            this.f28099a = fileE;
            if (fileE != null) {
                this.f28102d = f(fileE);
            }
        }
    }

    private File a(File file, String str, boolean z10) {
        boolean zCreateNewFile;
        File file2 = new File(file, str);
        if (file2.exists()) {
            zCreateNewFile = true;
        } else if (z10) {
            zCreateNewFile = file2.mkdir();
        } else {
            try {
                zCreateNewFile = file2.createNewFile();
            } catch (IOException e10) {
                Log.e(f28098f, BuildConfig.FLAVOR, e10);
                zCreateNewFile = false;
            }
        }
        if (zCreateNewFile) {
            return file2;
        }
        return null;
    }

    private static String c(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date(j10));
    }

    static int d(String str) throws Throwable {
        LineNumberReader lineNumberReader = null;
        try {
            LineNumberReader lineNumberReader2 = new LineNumberReader(new FileReader(str));
            do {
                try {
                } catch (Exception unused) {
                    lineNumberReader = lineNumberReader2;
                    FileUtility.closeQuietly(lineNumberReader);
                    return -1;
                } catch (Throwable th) {
                    th = th;
                    lineNumberReader = lineNumberReader2;
                    FileUtility.closeQuietly(lineNumberReader);
                    throw th;
                }
            } while (lineNumberReader2.readLine() != null);
            int lineNumber = lineNumberReader2.getLineNumber();
            FileUtility.closeQuietly(lineNumberReader2);
            return lineNumber;
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private File e(File file) {
        File fileA = a(file, "sdk_logs", true);
        if (fileA != null && fileA.exists()) {
            return fileA;
        }
        Log.e(f28098f, "Failed to create vungle logs dir");
        return null;
    }

    private boolean h(File file, String str) {
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        File file2 = new File(this.f28099a, str);
        if (file2.exists()) {
            return false;
        }
        return file.renameTo(file2);
    }

    File[] b(int i10) {
        File file = this.f28099a;
        if (file == null) {
            Log.w(f28098f, "No log cache dir found.");
            return null;
        }
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.vungle.warren.log.LogPersister.4
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                return str.endsWith("_crash");
            }
        });
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return null;
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.vungle.warren.log.LogPersister.5
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return file3.getName().compareTo(file2.getName());
            }
        });
        return (File[]) Arrays.copyOfRange(fileArrListFiles, 0, Math.min(fileArrListFiles.length, i10));
    }

    File f(File file) throws Throwable {
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.vungle.warren.log.LogPersister.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                return !str.endsWith("_pending");
            }
        });
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            this.f28100b = 0;
            return a(file, "log_" + System.currentTimeMillis() + UUID.randomUUID().toString(), false);
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.vungle.warren.log.LogPersister.3
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return file3.getName().compareTo(file2.getName());
            }
        });
        File file2 = fileArrListFiles[0];
        int iD = d(file2.getAbsolutePath());
        if (iD <= 0 || iD < this.f28101c) {
            this.f28100b = iD;
            return file2;
        }
        File fileF = null;
        try {
            if (h(this.f28102d, this.f28102d.getName() + "_pending")) {
                fileF = f(file);
            }
        } catch (Exception unused) {
        }
        if (fileF != null) {
            return fileF;
        }
        this.f28100b = iD;
        return file2;
    }

    File[] g() {
        File file = this.f28099a;
        if (file != null) {
            return file.listFiles(new FilenameFilter() { // from class: com.vungle.warren.log.LogPersister.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return str.endsWith("_pending");
                }
            });
        }
        Log.w(f28098f, "No log cache dir found.");
        return null;
    }

    void i(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        boolean z10;
        FileWriter fileWriter;
        if (this.f28099a == null) {
            Log.w(f28098f, "No log cache dir found.");
            return;
        }
        File file = this.f28102d;
        if (file == null || !file.exists()) {
            String str10 = f28098f;
            Log.d(str10, "current log file maybe deleted, create new one.");
            File fileF = f(this.f28099a);
            this.f28102d = fileF;
            if (fileF == null || !fileF.exists()) {
                Log.w(str10, "Can't create log file, maybe no space left.");
                return;
            }
        }
        LogEntry logEntry = new LogEntry(str, str2, str3, str4, str5, str6, TimeZone.getDefault().getID(), c(System.currentTimeMillis()), str7, str8, str9);
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(this.f28102d, true);
            } catch (IOException unused) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (this.f28100b > 0) {
                fileWriter.append((CharSequence) "\n");
            }
            fileWriter.append((CharSequence) logEntry.toJsonString());
            fileWriter.flush();
            FileUtility.closeQuietly(fileWriter);
            z10 = true;
        } catch (IOException unused2) {
            fileWriter2 = fileWriter;
            Log.e(f28098f, "Failed to write sdk logs.");
            z10 = false;
            FileUtility.closeQuietly(fileWriter2);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            FileUtility.closeQuietly(fileWriter2);
            throw th;
        }
        if (z10) {
            int i10 = this.f28100b + 1;
            this.f28100b = i10;
            if (i10 >= this.f28101c) {
                if (h(this.f28102d, this.f28102d.getName() + "_pending")) {
                    this.f28102d = f(this.f28099a);
                }
                LogManager.SdkLoggingEventListener sdkLoggingEventListener = this.f28103e;
                if (sdkLoggingEventListener != null) {
                    sdkLoggingEventListener.sendPendingLogs();
                }
            }
        }
    }

    void j(int i10) {
        if (i10 <= 0) {
            i10 = 100;
        }
        this.f28101c = i10;
    }

    void k(LogManager.SdkLoggingEventListener sdkLoggingEventListener) {
        this.f28103e = sdkLoggingEventListener;
    }

    public void saveCrashLogData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) throws Throwable {
        FileWriter fileWriter;
        if (this.f28099a == null) {
            Log.w(f28098f, "No log cache dir found.");
            return;
        }
        LogEntry logEntry = new LogEntry(str, str2, str3, str4, str5, str6, TimeZone.getDefault().getID(), c(System.currentTimeMillis()), str7, str8, str9);
        boolean z10 = false;
        File fileA = a(this.f28099a, "crash_" + System.currentTimeMillis(), false);
        if (fileA != null) {
            FileWriter fileWriter2 = null;
            try {
                try {
                    fileWriter = new FileWriter(fileA, true);
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileWriter.append((CharSequence) logEntry.toJsonString());
                fileWriter.flush();
                FileUtility.closeQuietly(fileWriter);
                z10 = true;
            } catch (IOException unused2) {
                fileWriter2 = fileWriter;
                Log.e(f28098f, "Failed to write crash log.");
                FileUtility.closeQuietly(fileWriter2);
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                FileUtility.closeQuietly(fileWriter2);
                throw th;
            }
            if (z10) {
                h(fileA, fileA.getName() + "_crash");
            }
        }
    }
}
