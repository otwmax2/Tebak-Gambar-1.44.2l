package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzah implements zzap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Double f23270o;

    public zzah(Double d10) {
        if (d10 == null) {
            this.f23270o = Double.valueOf(Double.NaN);
        } else {
            this.f23270o = d10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        if ("toString".equals(str)) {
            return new zzat(g());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", g(), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return new zzah(this.f23270o);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        boolean z10 = false;
        if (!Double.isNaN(this.f23270o.doubleValue()) && this.f23270o.doubleValue() != 0.0d) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzah) {
            return this.f23270o.equals(((zzah) obj).f23270o);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return this.f23270o;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        if (Double.isNaN(this.f23270o.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(this.f23270o.doubleValue())) {
            return this.f23270o.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalStripTrailingZeros = BigDecimal.valueOf(this.f23270o.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimalStripTrailingZeros.scale() > 0 ? bigDecimalStripTrailingZeros.precision() : bigDecimalStripTrailingZeros.scale()) - 1);
        String str = decimalFormat.format(bigDecimalStripTrailingZeros);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i10 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i10 >= 0 || i10 <= -7) && (i10 < 0 || i10 >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimalStripTrailingZeros.toPlainString();
    }

    public final int hashCode() {
        return this.f23270o.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return null;
    }

    public final String toString() {
        return g();
    }
}
