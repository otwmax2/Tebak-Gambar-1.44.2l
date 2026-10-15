package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public class a extends y4.q {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f25806o;

    a(int i10) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i10), t4.a.a(i10)));
        if (i10 == 0) {
            throw new IllegalArgumentException("errorCode should not be 0.");
        }
        this.f25806o = i10;
    }
}
