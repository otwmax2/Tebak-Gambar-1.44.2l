package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l0 extends a3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f25969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f25970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f25971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f25972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f25973e;

    l0(int i10, String str, long j10, long j11, int i11) {
        this.f25969a = i10;
        this.f25970b = str;
        this.f25971c = j10;
        this.f25972d = j11;
        this.f25973e = i11;
    }

    @Override // com.google.android.play.core.assetpacks.a3
    final int a() {
        return this.f25969a;
    }

    @Override // com.google.android.play.core.assetpacks.a3
    final int b() {
        return this.f25973e;
    }

    @Override // com.google.android.play.core.assetpacks.a3
    final long c() {
        return this.f25971c;
    }

    @Override // com.google.android.play.core.assetpacks.a3
    final long d() {
        return this.f25972d;
    }

    @Override // com.google.android.play.core.assetpacks.a3
    final String e() {
        return this.f25970b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof a3) {
            a3 a3Var = (a3) obj;
            if (this.f25969a == a3Var.a() && ((str = this.f25970b) != null ? str.equals(a3Var.e()) : a3Var.e() == null) && this.f25971c == a3Var.c() && this.f25972d == a3Var.d() && this.f25973e == a3Var.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = (this.f25969a ^ 1000003) * 1000003;
        String str = this.f25970b;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f25971c;
        long j11 = this.f25972d;
        return ((((((i10 ^ iHashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f25973e;
    }

    public final String toString() {
        int i10 = this.f25969a;
        String str = this.f25970b;
        long j10 = this.f25971c;
        long j11 = this.f25972d;
        int i11 = this.f25973e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 157);
        sb.append("SliceCheckpoint{fileExtractionStatus=");
        sb.append(i10);
        sb.append(", filePath=");
        sb.append(str);
        sb.append(", fileOffset=");
        sb.append(j10);
        sb.append(", remainingBytes=");
        sb.append(j11);
        sb.append(", previousChunk=");
        sb.append(i11);
        sb.append("}");
        return sb.toString();
    }
}
