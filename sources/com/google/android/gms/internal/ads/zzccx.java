package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccx extends zzccu {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Set f11866t = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final DecimalFormat f11867u = new DecimalFormat("#,###");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f11868v = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private File f11869r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f11870s;

    public zzccx(zzcbj zzcbjVar) {
        super(zzcbjVar);
        File cacheDir = this.f11862o.getCacheDir();
        if (cacheDir == null) {
            zzbza.g("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.f11869r = file;
        if (!file.isDirectory() && !this.f11869r.mkdirs()) {
            zzbza.g("Could not create preload cache directory at ".concat(String.valueOf(this.f11869r.getAbsolutePath())));
            this.f11869r = null;
        } else {
            if (this.f11869r.setReadable(true, false) && this.f11869r.setExecutable(true, false)) {
                return;
            }
            zzbza.g("Could not set cache file permissions at ".concat(String.valueOf(this.f11869r.getAbsolutePath())));
            this.f11869r = null;
        }
    }

    private final File y(File file) {
        return new File(this.f11869r, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void g() {
        this.f11870s = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0343, code lost:
    
        r26 = r4;
        r24 = r14;
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0349, code lost:
    
        r26.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0351, code lost:
    
        if (com.google.android.gms.internal.ads.zzbza.j(3) == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0353, code lost:
    
        com.google.android.gms.internal.ads.zzbza.b("Preloaded " + com.google.android.gms.internal.ads.zzccx.f11867u.format(r13) + " bytes from " + r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0376, code lost:
    
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x037f, code lost:
    
        if (r0.isFile() == false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0381, code lost:
    
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0389, code lost:
    
        r0.createNewFile();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x040d  */
    @Override // com.google.android.gms.internal.ads.zzccu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean v(final java.lang.String r30) {
        /*
            Method dump skipped, instruction units count: 1084
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzccx.v(java.lang.String):boolean");
    }
}
