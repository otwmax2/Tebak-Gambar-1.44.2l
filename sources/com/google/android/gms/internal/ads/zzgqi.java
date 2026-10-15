package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgqi;
import com.google.android.gms.internal.ads.zzgqm;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgqi<MessageType extends zzgqm<MessageType, BuilderType>, BuilderType extends zzgqi<MessageType, BuilderType>> extends zzgom<MessageType, BuilderType> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgqm f19482o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected zzgqm f19483p;

    protected zzgqi(MessageType messagetype) {
        this.f19482o = messagetype;
        if (messagetype.D()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f19483p = messagetype.k();
    }

    private static void g(Object obj, Object obj2) {
        zzgse.a().b(obj.getClass()).f(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgom
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzgqi f() {
        zzgqi zzgqiVar = (zzgqi) this.f19482o.F(5, null, null);
        zzgqiVar.f19483p = f1();
        return zzgqiVar;
    }

    public final zzgqi i(zzgqm zzgqmVar) {
        if (!this.f19482o.equals(zzgqmVar)) {
            if (!this.f19483p.D()) {
                n();
            }
            g(this.f19483p, zzgqmVar);
        }
        return this;
    }

    public final zzgqi j(byte[] bArr, int i10, int i11, zzgpy zzgpyVar) throws zzgqy {
        if (!this.f19483p.D()) {
            n();
        }
        try {
            zzgse.a().b(this.f19483p.getClass()).h(this.f19483p, bArr, 0, i11, new zzgoq(zzgpyVar));
            return this;
        } catch (zzgqy e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw zzgqy.j();
        }
    }

    public final MessageType k() {
        MessageType messagetype = (MessageType) f1();
        if (messagetype.C()) {
            return messagetype;
        }
        throw new zzgtf(messagetype);
    }

    @Override // com.google.android.gms.internal.ads.zzgrv
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public MessageType f1() {
        if (!this.f19483p.D()) {
            return (MessageType) this.f19483p;
        }
        this.f19483p.y();
        return (MessageType) this.f19483p;
    }

    protected final void m() {
        if (this.f19483p.D()) {
            return;
        }
        n();
    }

    protected void n() {
        zzgqm zzgqmVarK = this.f19482o.k();
        g(zzgqmVarK, this.f19483p);
        this.f19483p = zzgqmVarK;
    }
}
