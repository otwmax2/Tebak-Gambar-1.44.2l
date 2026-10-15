package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i0 extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f25940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f25941d;

    i0(int i10, String str, String str2) {
        this.f25939b = i10;
        this.f25940c = str;
        this.f25941d = str2;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final String a() {
        return this.f25941d;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final int b() {
        return this.f25939b;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final String c() {
        return this.f25940c;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f25939b == bVar.b() && ((str = this.f25940c) != null ? str.equals(bVar.c()) : bVar.c() == null) && ((str2 = this.f25941d) != null ? str2.equals(bVar.a()) : bVar.a() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = (this.f25939b ^ 1000003) * 1000003;
        String str = this.f25940c;
        int iHashCode = (i10 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f25941d;
        return iHashCode ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        int i10 = this.f25939b;
        String str = this.f25940c;
        String str2 = this.f25941d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str2).length());
        sb.append("AssetPackLocation{packStorageMethod=");
        sb.append(i10);
        sb.append(", path=");
        sb.append(str);
        sb.append(", assetsPath=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }
}
