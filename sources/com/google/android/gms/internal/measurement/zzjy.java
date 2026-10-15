package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjy;
import com.google.android.gms.internal.measurement.zzkc;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public class zzjy<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zzjy<MessageType, BuilderType>> extends zzik<MessageType, BuilderType> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzkc f23656o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected zzkc f23657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f23658q = false;

    protected zzjy(MessageType messagetype) {
        this.f23656o = messagetype;
        this.f23657p = (zzkc) messagetype.t(4, null, null);
    }

    private static final void k(zzkc zzkcVar, zzkc zzkcVar2) {
        zzlr.a().b(zzkcVar.getClass()).f(zzkcVar, zzkcVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlk
    public final /* synthetic */ zzlj a() {
        return this.f23656o;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    protected final /* synthetic */ zzik h(zzil zzilVar) {
        m((zzkc) zzilVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    public final /* bridge */ /* synthetic */ zzik i(byte[] bArr, int i10, int i11) throws zzkm {
        n(bArr, 0, i11, zzjo.a());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    public final /* bridge */ /* synthetic */ zzik j(byte[] bArr, int i10, int i11, zzjo zzjoVar) throws zzkm {
        n(bArr, 0, i11, zzjoVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzik
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzjy g() {
        zzjy zzjyVar = (zzjy) this.f23656o.t(5, null, null);
        zzjyVar.m(m3());
        return zzjyVar;
    }

    public final zzjy m(zzkc zzkcVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        k(this.f23657p, zzkcVar);
        return this;
    }

    public final zzjy n(byte[] bArr, int i10, int i11, zzjo zzjoVar) throws zzkm {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        try {
            zzlr.a().b(this.f23657p.getClass()).h(this.f23657p, bArr, 0, i11, new zzio(zzjoVar));
            return this;
        } catch (zzkm e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw zzkm.f();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        if (r3 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final MessageType o() {
        /*
            r5 = this;
            com.google.android.gms.internal.measurement.zzkc r0 = r5.m3()
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r0.t(r1, r2, r2)
            java.lang.Byte r3 = (java.lang.Byte) r3
            byte r3 = r3.byteValue()
            if (r3 != r1) goto L13
            goto L30
        L13:
            if (r3 == 0) goto L31
            com.google.android.gms.internal.measurement.zzlr r3 = com.google.android.gms.internal.measurement.zzlr.a()
            java.lang.Class r4 = r0.getClass()
            com.google.android.gms.internal.measurement.zzlu r3 = r3.b(r4)
            boolean r3 = r3.d(r0)
            if (r1 == r3) goto L29
            r1 = r2
            goto L2a
        L29:
            r1 = r0
        L2a:
            r4 = 2
            r0.t(r4, r1, r2)
            if (r3 == 0) goto L31
        L30:
            return r0
        L31:
            com.google.android.gms.internal.measurement.zzmk r1 = new com.google.android.gms.internal.measurement.zzmk
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjy.o():com.google.android.gms.internal.measurement.zzkc");
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public MessageType m3() {
        if (this.f23658q) {
            return (MessageType) this.f23657p;
        }
        zzkc zzkcVar = this.f23657p;
        zzlr.a().b(zzkcVar.getClass()).e(zzkcVar);
        this.f23658q = true;
        return (MessageType) this.f23657p;
    }

    protected void q() {
        zzkc zzkcVar = (zzkc) this.f23657p.t(4, null, null);
        k(zzkcVar, this.f23657p);
        this.f23657p = zzkcVar;
    }
}
