package com.google.android.play.core.assetpacks;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b3 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final v4.a f25822h = new v4.a("SliceMetadataManager");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e0 f25824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f25825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f25826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f25827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f25828f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f25823a = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25829g = -1;

    b3(e0 e0Var, String str, int i10, long j10, String str2) {
        this.f25824b = e0Var;
        this.f25825c = str;
        this.f25826d = i10;
        this.f25827e = j10;
        this.f25828f = str2;
    }

    private final File n() {
        File fileB = this.f25824b.B(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
        if (!fileB.exists()) {
            fileB.mkdirs();
        }
        return fileB;
    }

    private final File o() throws IOException {
        File fileA = this.f25824b.A(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
        fileA.getParentFile().mkdirs();
        fileA.createNewFile();
        return fileA;
    }

    final int a() throws IOException {
        File fileA = this.f25824b.A(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
        if (!fileA.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(fileA);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") != null) {
                return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
            }
            throw new d1("Slice checkpoint file corrupt.");
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final a3 b() throws IOException {
        File fileA = this.f25824b.A(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
        if (!fileA.exists()) {
            throw new d1("Slice checkpoint file does not exist.");
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(fileA);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                throw new d1("Slice checkpoint file corrupt.");
            }
            try {
                int i10 = Integer.parseInt(properties.getProperty("fileStatus"));
                String property = properties.getProperty("fileName");
                long j10 = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                long j11 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                int i11 = Integer.parseInt(properties.getProperty("previousChunk"));
                this.f25829g = Integer.parseInt(properties.getProperty("metadataFileCounter", AppEventsConstants.EVENT_PARAM_VALUE_NO));
                return new l0(i10, property, j10, j11, i11);
            } catch (NumberFormatException e10) {
                throw new d1("Slice checkpoint file corrupt.", e10);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final File c() {
        return new File(n(), String.format("%s-NAM.dat", Integer.valueOf(this.f25829g)));
    }

    final void d(InputStream inputStream, long j10) throws IOException {
        int i10;
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j10);
            do {
                i10 = inputStream.read(this.f25823a);
                if (i10 > 0) {
                    randomAccessFile.write(this.f25823a, 0, i10);
                }
            } while (i10 == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void e(long j10, byte[] bArr, int i10, int i11) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j10);
            randomAccessFile.write(bArr, i10, i11);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void f(int i10) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(c().length()));
        properties.put("previousChunk", String.valueOf(i10));
        properties.put("metadataFileCounter", String.valueOf(this.f25829g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void g(String str, long j10, long j11, int i10) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j10));
        properties.put("remainingBytes", String.valueOf(j11));
        properties.put("previousChunk", String.valueOf(i10));
        properties.put("metadataFileCounter", String.valueOf(this.f25829g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void h(byte[] bArr, int i10) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i10));
        properties.put("metadataFileCounter", String.valueOf(this.f25829g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File fileZ = this.f25824b.z(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
            if (fileZ.exists()) {
                fileZ.delete();
            }
            fileOutputStream = new FileOutputStream(fileZ);
            try {
                fileOutputStream.write(bArr);
            } finally {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
            }
        } finally {
        }
    }

    final void i(int i10) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i10));
        properties.put("metadataFileCounter", String.valueOf(this.f25829g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void j(byte[] bArr) throws IOException {
        this.f25829g++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(n(), String.format("%s-LFH.dat", Integer.valueOf(this.f25829g))));
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IOException e10) {
            throw new d1("Could not write metadata file.", e10);
        }
    }

    final void k(byte[] bArr, InputStream inputStream) throws IOException {
        this.f25829g++;
        FileOutputStream fileOutputStream = new FileOutputStream(c());
        try {
            fileOutputStream.write(bArr);
            int i10 = inputStream.read(this.f25823a);
            while (i10 > 0) {
                fileOutputStream.write(this.f25823a, 0, i10);
                i10 = inputStream.read(this.f25823a);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final void l(byte[] bArr, int i10, int i11) throws IOException {
        this.f25829g++;
        FileOutputStream fileOutputStream = new FileOutputStream(c());
        try {
            fileOutputStream.write(bArr, 0, i11);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    final boolean m() {
        File fileA = this.f25824b.A(this.f25825c, this.f25826d, this.f25827e, this.f25828f);
        if (!fileA.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(fileA);
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") != null) {
                    return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
                }
                f25822h.b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
                return false;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IOException e10) {
            f25822h.b("Could not read checkpoint while checking if extraction finished. %s", e10);
            return false;
        }
    }
}
