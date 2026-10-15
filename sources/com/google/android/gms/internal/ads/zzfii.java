package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfii {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f18270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfhp f18271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfhr f18272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfih f18273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfih f18274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Task f18275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Task f18276h;

    @VisibleForTesting
    zzfii(Context context, Executor executor, zzfhp zzfhpVar, zzfhr zzfhrVar, zzfif zzfifVar, zzfig zzfigVar) {
        this.f18269a = context;
        this.f18270b = executor;
        this.f18271c = zzfhpVar;
        this.f18272d = zzfhrVar;
        this.f18273e = zzfifVar;
        this.f18274f = zzfigVar;
    }

    public static zzfii e(Context context, Executor executor, zzfhp zzfhpVar, zzfhr zzfhrVar) {
        final zzfii zzfiiVar = new zzfii(context, executor, zzfhpVar, zzfhrVar, new zzfif(), new zzfig());
        if (zzfiiVar.f18272d.d()) {
            zzfiiVar.f18275g = zzfiiVar.h(new Callable() { // from class: com.google.android.gms.internal.ads.zzfic
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f18264a.c();
                }
            });
        } else {
            zzfiiVar.f18275g = Tasks.e(zzfiiVar.f18273e.zza());
        }
        zzfiiVar.f18276h = zzfiiVar.h(new Callable() { // from class: com.google.android.gms.internal.ads.zzfid
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f18265a.d();
            }
        });
        return zzfiiVar;
    }

    private static zzans g(Task task, zzans zzansVar) {
        return !task.t() ? zzansVar : (zzans) task.p();
    }

    private final Task h(Callable callable) {
        return Tasks.c(this.f18270b, callable).g(this.f18270b, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfie
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void b(Exception exc) {
                this.f18266a.f(exc);
            }
        });
    }

    public final zzans a() {
        return g(this.f18275g, this.f18273e.zza());
    }

    public final zzans b() {
        return g(this.f18276h, this.f18274f.zza());
    }

    final /* synthetic */ zzans c() throws Exception {
        Context context = this.f18269a;
        zzamv zzamvVarJ0 = zzans.j0();
        AdvertisingIdClient.Info infoA = AdvertisingIdClient.a(context);
        String strA = infoA.a();
        if (strA != null && strA.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID uuidFromString = UUID.fromString(strA);
            byte[] bArr = new byte[16];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
            strA = Base64.encodeToString(bArr, 11);
        }
        if (strA != null) {
            zzamvVarJ0.s0(strA);
            zzamvVarJ0.r0(infoA.b());
            zzamvVarJ0.S(6);
        }
        return (zzans) zzamvVarJ0.k();
    }

    final /* synthetic */ zzans d() throws Exception {
        Context context = this.f18269a;
        return zzfhx.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    final /* synthetic */ void f(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f18271c.c(2025, -1L, exc);
    }
}
