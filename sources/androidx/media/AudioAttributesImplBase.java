package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3603a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3604b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3605c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3606d = -1;

    AudioAttributesImplBase() {
    }

    public int a() {
        return this.f3604b;
    }

    public int b() {
        int i10 = this.f3605c;
        int iC = c();
        if (iC == 6) {
            i10 |= 4;
        } else if (iC == 7) {
            i10 |= 1;
        }
        return i10 & 273;
    }

    public int c() {
        int i10 = this.f3606d;
        return i10 != -1 ? i10 : AudioAttributesCompat.a(false, this.f3605c, this.f3603a);
    }

    public int d() {
        return this.f3603a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f3604b == audioAttributesImplBase.a() && this.f3605c == audioAttributesImplBase.b() && this.f3603a == audioAttributesImplBase.d() && this.f3606d == audioAttributesImplBase.f3606d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3604b), Integer.valueOf(this.f3605c), Integer.valueOf(this.f3603a), Integer.valueOf(this.f3606d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f3606d != -1) {
            sb.append(" stream=");
            sb.append(this.f3606d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.b(this.f3603a));
        sb.append(" content=");
        sb.append(this.f3604b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f3605c).toUpperCase());
        return sb.toString();
    }
}
