package c7;

import java.io.ObjectStreamException;
import java.math.BigDecimal;

/* JADX INFO: compiled from: LazilyParsedNumber.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g extends Number {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f4922o;

    public g(String str) {
        this.f4922o = str;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f4922o);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f4922o);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        String str = this.f4922o;
        String str2 = ((g) obj).f4922o;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f4922o);
    }

    public int hashCode() {
        return this.f4922o.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f4922o);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f4922o);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f4922o).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f4922o);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f4922o).longValue();
        }
    }

    public String toString() {
        return this.f4922o;
    }
}
