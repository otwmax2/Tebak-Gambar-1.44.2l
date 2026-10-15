package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@Deprecated
public final class zzbaz {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    String f10454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    Context f10455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    String f10456f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AtomicBoolean f10458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private File f10459i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final BlockingQueue f10451a = new ArrayBlockingQueue(100);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final LinkedHashMap f10452b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    final Map f10453c = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashSet f10457g = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public static /* synthetic */ void c(zzbaz zzbazVar) throws Throwable {
        while (true) {
            try {
                zzbbj zzbbjVar = (zzbbj) zzbazVar.f10451a.take();
                zzbbi zzbbiVarA = zzbbjVar.a();
                if (!TextUtils.isEmpty(zzbbiVarA.b())) {
                    zzbazVar.g(zzbazVar.b(zzbazVar.f10452b, zzbbjVar.b()), zzbbiVarA);
                }
            } catch (InterruptedException e10) {
                zzbza.h("CsiReporter:reporter interrupted", e10);
                return;
            }
        }
    }

    private final void g(Map map, zzbbi zzbbiVar) throws Throwable {
        FileOutputStream fileOutputStream;
        Uri.Builder builderBuildUpon = Uri.parse(this.f10454d).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String string = builderBuildUpon.build().toString();
        if (zzbbiVar != null) {
            StringBuilder sb = new StringBuilder(string);
            if (!TextUtils.isEmpty(zzbbiVar.b())) {
                sb.append("&it=");
                sb.append(zzbbiVar.b());
            }
            if (!TextUtils.isEmpty(zzbbiVar.a())) {
                sb.append("&blat=");
                sb.append(zzbbiVar.a());
            }
            string = sb.toString();
        }
        if (!this.f10458h.get()) {
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.h(this.f10455e, this.f10456f, string);
            return;
        }
        File file = this.f10459i;
        if (file == null) {
            zzbza.g("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(string.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e11) {
                zzbza.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e11);
            }
        } catch (IOException e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            zzbza.h("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e13) {
                    zzbza.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e13);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e14) {
                    zzbza.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e14);
                }
            }
            throw th;
        }
    }

    public final zzbbf a(String str) {
        zzbbf zzbbfVar = (zzbbf) this.f10453c.get(str);
        return zzbbfVar != null ? zzbbfVar : zzbbf.f10461a;
    }

    final Map b(Map map, Map map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            linkedHashMap.put(str, a(str).a((String) linkedHashMap.get(str), str2));
        }
        return linkedHashMap;
    }

    public final void d(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.f10455e = context;
        this.f10456f = str;
        this.f10454d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f10458h = atomicBoolean;
        atomicBoolean.set(((Boolean) zzbcf.f10522c.e()).booleanValue());
        if (this.f10458h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f10459i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f10452b.put((String) entry.getKey(), (String) entry.getValue());
        }
        zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbay
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                zzbaz.c(this.f10450o);
            }
        });
        Map map2 = this.f10453c;
        zzbbf zzbbfVar = zzbbf.f10462b;
        map2.put("action", zzbbfVar);
        this.f10453c.put("ad_format", zzbbfVar);
        this.f10453c.put("e", zzbbf.f10463c);
    }

    public final void e(String str) throws Throwable {
        if (this.f10457g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f10456f);
        linkedHashMap.put("ue", str);
        g(b(this.f10452b, linkedHashMap), null);
    }

    public final boolean f(zzbbj zzbbjVar) {
        return this.f10451a.offer(zzbbjVar);
    }
}
