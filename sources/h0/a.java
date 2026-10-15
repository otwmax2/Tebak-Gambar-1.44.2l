package h0;

import java.io.IOException;

/* JADX INFO: compiled from: Serializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends IOException {
    public /* synthetic */ a(String str, Throwable th, int i10, t9.g gVar) {
        this(str, (i10 & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String str, Throwable th) {
        super(str, th);
        t9.m.e(str, "message");
    }
}
