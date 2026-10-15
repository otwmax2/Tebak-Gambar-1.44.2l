package com.android.volley.toolbox;

import android.content.Context;
import com.android.volley.toolbox.DiskBasedCache;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class Volley {

    /* JADX INFO: renamed from: com.android.volley.toolbox.Volley$1, reason: invalid class name */
    class AnonymousClass1 implements DiskBasedCache.FileSupplier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f5249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f5250b;

        @Override // com.android.volley.toolbox.DiskBasedCache.FileSupplier
        public File get() {
            if (this.f5249a == null) {
                this.f5249a = new File(this.f5250b.getCacheDir(), "volley");
            }
            return this.f5249a;
        }
    }
}
