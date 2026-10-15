package w9;

import java.util.Random;

/* JADX INFO: compiled from: PlatformRandom.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends c {
    @Override // w9.c
    public int b(int i10) {
        return d.e(f().nextInt(), i10);
    }

    @Override // w9.c
    public int c() {
        return f().nextInt();
    }

    @Override // w9.c
    public int d(int i10) {
        return f().nextInt(i10);
    }

    public abstract Random f();
}
