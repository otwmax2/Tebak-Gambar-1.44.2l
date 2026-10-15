package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ConfigStorageClient.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, o> f26668c = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26670b;

    private o(Context context, String str) {
        this.f26669a = context;
        this.f26670b = str;
    }

    public static synchronized o c(Context context, String str) {
        Map<String, o> map;
        map = f26668c;
        if (!map.containsKey(str)) {
            map.put(str, new o(context, str));
        }
        return map.get(str);
    }

    public synchronized Void a() {
        this.f26669a.deleteFile(this.f26670b);
        return null;
    }

    String b() {
        return this.f26670b;
    }

    @Nullable
    public synchronized f d() throws IOException {
        FileInputStream fileInputStreamOpenFileInput;
        Throwable th;
        try {
            fileInputStreamOpenFileInput = this.f26669a.openFileInput(this.f26670b);
            try {
                int iAvailable = fileInputStreamOpenFileInput.available();
                byte[] bArr = new byte[iAvailable];
                fileInputStreamOpenFileInput.read(bArr, 0, iAvailable);
                f fVarB = f.b(new JSONObject(new String(bArr, "UTF-8")));
                fileInputStreamOpenFileInput.close();
                return fVarB;
            } catch (FileNotFoundException | JSONException unused) {
                if (fileInputStreamOpenFileInput != null) {
                    fileInputStreamOpenFileInput.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStreamOpenFileInput != null) {
                    fileInputStreamOpenFileInput.close();
                }
                throw th;
            }
        } catch (FileNotFoundException | JSONException unused2) {
            fileInputStreamOpenFileInput = null;
        } catch (Throwable th3) {
            fileInputStreamOpenFileInput = null;
            th = th3;
        }
    }

    public synchronized Void e(f fVar) throws IOException {
        FileOutputStream fileOutputStreamOpenFileOutput = this.f26669a.openFileOutput(this.f26670b, 0);
        try {
            fileOutputStreamOpenFileOutput.write(fVar.toString().getBytes("UTF-8"));
        } finally {
            fileOutputStreamOpenFileOutput.close();
        }
        return null;
    }
}
