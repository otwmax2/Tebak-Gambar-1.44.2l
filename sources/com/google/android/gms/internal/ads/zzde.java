package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzde {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f14420a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void a();

    zzdc b(zzdc zzdcVar) throws zzdd;

    void c();

    void d();

    boolean e();

    boolean f();

    void g(ByteBuffer byteBuffer);

    ByteBuffer zzb();
}
