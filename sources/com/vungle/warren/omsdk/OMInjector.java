package com.vungle.warren.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import v7.a;

/* JADX INFO: loaded from: classes2.dex */
public class OMInjector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f28229a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicReference<Context> f28230b;

    public OMInjector(Context context) {
        this.f28230b = new AtomicReference<>(context.getApplicationContext());
    }

    private void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private File c(String str, File file) throws Throwable {
        Closeable closeable = null;
        try {
            FileWriter fileWriter = new FileWriter(file);
            try {
                fileWriter.write(str);
                fileWriter.flush();
                b(fileWriter);
                return file;
            } catch (Throwable th) {
                th = th;
                closeable = fileWriter;
                b(closeable);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void init() {
        this.f28229a.post(new Runnable() { // from class: com.vungle.warren.omsdk.OMInjector.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.b()) {
                    return;
                }
                a.a((Context) OMInjector.this.f28230b.get());
            }
        });
    }

    public List<File> injectJsFiles(File file) throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c(Res.OM_JS, new File(file, "omsdk.js")));
        arrayList.add(c(Res.OM_SESSION_JS, new File(file, "omsdk-session.js")));
        return arrayList;
    }
}
