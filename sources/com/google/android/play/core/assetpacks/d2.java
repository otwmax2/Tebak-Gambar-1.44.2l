package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d2 implements u3 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final v4.a f25839i = new v4.a("FakeAssetPackService");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final AtomicInteger f25840j = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f25842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h1 f25843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f25844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r2 f25845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v4.y<Executor> f25846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p2 f25847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Handler f25848h = new Handler(Looper.getMainLooper());

    d2(File file, y yVar, h1 h1Var, Context context, r2 r2Var, v4.y<Executor> yVar2, p2 p2Var) {
        this.f25841a = file.getAbsolutePath();
        this.f25842b = yVar;
        this.f25843c = h1Var;
        this.f25844d = context;
        this.f25845e = r2Var;
        this.f25846f = yVar2;
        this.f25847g = p2Var;
    }

    static long g(int i10, long j10) {
        if (i10 == 2) {
            return j10 / 2;
        }
        if (i10 == 3 || i10 == 4) {
            return j10;
        }
        return 0L;
    }

    private final Bundle j(int i10, String str, int i11) throws u4.a {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.f25845e.a());
        bundle.putInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID, i10);
        File[] fileArrL = l(str);
        ArrayList<String> arrayList = new ArrayList<>();
        long length = 0;
        for (File file : fileArrL) {
            length += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i11 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String strA = v4.t.a(file);
            bundle.putParcelableArrayList(t4.b.b("chunk_intents", str, strA), arrayList2);
            bundle.putString(t4.b.b("uncompressed_hash_sha256", str, strA), k(file));
            bundle.putLong(t4.b.b("uncompressed_size", str, strA), file.length());
            arrayList.add(strA);
        }
        bundle.putStringArrayList(t4.b.a("slice_ids", str), arrayList);
        bundle.putLong(t4.b.a("pack_version", str), this.f25845e.a());
        bundle.putInt(t4.b.a("status", str), i11);
        bundle.putInt(t4.b.a("error_code", str), 0);
        bundle.putLong(t4.b.a("bytes_downloaded", str), g(i11, length));
        bundle.putLong(t4.b.a("total_bytes_to_download", str), length);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", g(i11, length));
        bundle.putLong("total_bytes_to_download", length);
        final Intent intentPutExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
        this.f25848h.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.c2
            @Override // java.lang.Runnable
            public final void run() {
                this.f25832o.h(intentPutExtra);
            }
        });
        return bundle;
    }

    private static String k(File file) throws u4.a {
        try {
            return f2.a(Arrays.asList(file));
        } catch (IOException e10) {
            throw new u4.a(String.format("Could not digest file: %s.", file), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new u4.a("SHA256 algorithm not supported.", e11);
        }
    }

    private final File[] l(final String str) throws u4.a {
        File file = new File(this.f25841a);
        if (!file.isDirectory()) {
            throw new u4.a(String.format("Local testing directory '%s' not found.", file));
        }
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: s4.d
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str2) {
                return str2.startsWith(String.valueOf(str).concat("-")) && str2.endsWith(".apk");
            }
        });
        if (fileArrListFiles == null) {
            throw new u4.a(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        if (fileArrListFiles.length == 0) {
            throw new u4.a(String.format("No APKs available for pack '%s'.", str));
        }
        for (File file2 : fileArrListFiles) {
            if (v4.t.a(file2).equals(str)) {
                return fileArrListFiles;
            }
        }
        throw new u4.a(String.format("No master slice available for pack '%s'.", str));
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void Q(int i10) {
        f25839i.d("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void a(final int i10, final String str) {
        f25839i.d("notifyModuleCompleted", new Object[0]);
        this.f25846f.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.b2
            @Override // java.lang.Runnable
            public final void run() {
                this.f25819o.i(i10, str);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final y4.e<ParcelFileDescriptor> b(int i10, String str, String str2, int i11) {
        int i12;
        f25839i.d("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i10), str, str2, Integer.valueOf(i11));
        y4.p pVar = new y4.p();
        try {
        } catch (FileNotFoundException e10) {
            f25839i.e("getChunkFileDescriptor failed", e10);
            pVar.b(new u4.a("Asset Slice file not found.", e10));
        } catch (u4.a e11) {
            f25839i.e("getChunkFileDescriptor failed", e11);
            pVar.b(e11);
        }
        for (File file : l(str)) {
            if (v4.t.a(file).equals(str2)) {
                pVar.c(ParcelFileDescriptor.open(file, 268435456));
                return pVar.a();
            }
        }
        throw new u4.a(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void c() {
        f25839i.d("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void d(int i10, String str, String str2, int i11) {
        f25839i.d("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final y4.e<List<String>> e(Map<String, Long> map) {
        f25839i.d("syncPacks()", new Object[0]);
        return y4.g.c(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void f(List<String> list) {
        f25839i.d("cancelDownload(%s)", list);
    }

    final /* synthetic */ void h(Intent intent) {
        this.f25842b.a(this.f25844d, intent);
    }

    final /* synthetic */ void i(int i10, String str) {
        try {
            j(i10, str, 4);
        } catch (u4.a e10) {
            f25839i.e("notifyModuleCompleted failed", e10);
        }
    }
}
