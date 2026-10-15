package com.google.gson;

import java.math.BigInteger;

/* JADX INFO: compiled from: JsonPrimitive.java */
/* JADX INFO: loaded from: classes2.dex */
public final class r extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f26736a;

    public r(Boolean bool) {
        this.f26736a = c7.a.b(bool);
    }

    private static boolean v(r rVar) {
        Object obj = rVar.f26736a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.google.gson.l
    public boolean c() {
        return u() ? ((Boolean) this.f26736a).booleanValue() : Boolean.parseBoolean(o());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f26736a == null) {
            return rVar.f26736a == null;
        }
        if (v(this) && v(rVar)) {
            return t().longValue() == rVar.t().longValue();
        }
        Object obj2 = this.f26736a;
        if (!(obj2 instanceof Number) || !(rVar.f26736a instanceof Number)) {
            return obj2.equals(rVar.f26736a);
        }
        double dDoubleValue = t().doubleValue();
        double dDoubleValue2 = rVar.t().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    @Override // com.google.gson.l
    public double g() {
        return x() ? t().doubleValue() : Double.parseDouble(o());
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f26736a == null) {
            return 31;
        }
        if (v(this)) {
            jDoubleToLongBits = t().longValue();
        } else {
            Object obj = this.f26736a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(t().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    @Override // com.google.gson.l
    public float i() {
        return x() ? t().floatValue() : Float.parseFloat(o());
    }

    @Override // com.google.gson.l
    public int j() {
        return x() ? t().intValue() : Integer.parseInt(o());
    }

    @Override // com.google.gson.l
    public long n() {
        return x() ? t().longValue() : Long.parseLong(o());
    }

    @Override // com.google.gson.l
    public String o() {
        return x() ? t().toString() : u() ? ((Boolean) this.f26736a).toString() : (String) this.f26736a;
    }

    public Number t() {
        Object obj = this.f26736a;
        return obj instanceof String ? new c7.g((String) obj) : (Number) obj;
    }

    public boolean u() {
        return this.f26736a instanceof Boolean;
    }

    public boolean x() {
        return this.f26736a instanceof Number;
    }

    public boolean y() {
        return this.f26736a instanceof String;
    }

    public r(Number number) {
        this.f26736a = c7.a.b(number);
    }

    public r(String str) {
        this.f26736a = c7.a.b(str);
    }
}
