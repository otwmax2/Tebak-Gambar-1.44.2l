package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarl extends zzasm {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final zzasn f9817j = new zzasn();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f9818i;

    public zzarl(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, Context context) {
        super(zzaqxVar, "GiGLjdugkD/A/Nktl1YTMtFZ30miEp5ujxoBBsS1JjEnt8RpwdFKjPJMmiyB3Gih", "lGLGd1/lOSwZNvJFVMee07xTqqB6gC2uy3r930yIvSk=", zzamvVar, i10, 29);
        this.f9818i = context;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.n0("E");
        AtomicReference atomicReferenceA = f9817j.a(this.f9818i.getPackageName());
        if (atomicReferenceA.get() == null) {
            synchronized (atomicReferenceA) {
                if (atomicReferenceA.get() == null) {
                    atomicReferenceA.set((String) this.f9859f.invoke(null, this.f9818i));
                }
            }
        }
        String str = (String) atomicReferenceA.get();
        synchronized (this.f9858e) {
            this.f9858e.n0(zzaoh.a(str.getBytes(), true));
        }
    }
}
