package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeje implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f16761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f16762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f16764e;

    public zzeje(zzfuu zzfuuVar, zzfuu zzfuuVar2, Context context, zzeyx zzeyxVar, ViewGroup viewGroup) {
        this.f16760a = zzfuuVar;
        this.f16761b = zzfuuVar2;
        this.f16762c = context;
        this.f16763d = zzeyxVar;
        this.f16764e = viewGroup;
    }

    private final List c() {
        ArrayList arrayList = new ArrayList();
        View view = this.f16764e;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", iIndexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return arrayList;
    }

    final /* synthetic */ zzejf a() throws Exception {
        return new zzejf(this.f16762c, this.f16763d.f17732e, c());
    }

    final /* synthetic */ zzejf b() throws Exception {
        return new zzejf(this.f16762c, this.f16763d.f17732e, c());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        zzbar.c(this.f16762c);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10344q9)).booleanValue() ? this.f16761b.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzejc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16758a.a();
            }
        }) : this.f16760a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzejd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16759a.b();
            }
        });
    }
}
