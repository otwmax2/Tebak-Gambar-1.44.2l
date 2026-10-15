package com.facebook.internal;

import java.util.Arrays;
import java.util.EnumSet;

/* JADX INFO: compiled from: SmartLoginOption.kt */
/* JADX INFO: loaded from: classes.dex */
public enum SmartLoginOption {
    None(0),
    Enabled(1),
    RequireConfirm(2);

    private static final EnumSet<SmartLoginOption> ALL;
    public static final Companion Companion = new Companion(null);
    private final long value;

    /* JADX INFO: compiled from: SmartLoginOption.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final EnumSet<SmartLoginOption> parseOptions(long j10) {
            EnumSet<SmartLoginOption> enumSetNoneOf = EnumSet.noneOf(SmartLoginOption.class);
            for (SmartLoginOption smartLoginOption : SmartLoginOption.ALL) {
                if ((smartLoginOption.getValue() & j10) != 0) {
                    enumSetNoneOf.add(smartLoginOption);
                }
            }
            t9.m.d(enumSetNoneOf, "result");
            return enumSetNoneOf;
        }
    }

    static {
        EnumSet<SmartLoginOption> enumSetAllOf = EnumSet.allOf(SmartLoginOption.class);
        t9.m.d(enumSetAllOf, "allOf(SmartLoginOption::class.java)");
        ALL = enumSetAllOf;
    }

    SmartLoginOption(long j10) {
        this.value = j10;
    }

    public static final EnumSet<SmartLoginOption> parseOptions(long j10) {
        return Companion.parseOptions(j10);
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static SmartLoginOption[] valuesCustom() {
        SmartLoginOption[] smartLoginOptionArrValuesCustom = values();
        return (SmartLoginOption[]) Arrays.copyOf(smartLoginOptionArrValuesCustom, smartLoginOptionArrValuesCustom.length);
    }

    public final long getValue() {
        return this.value;
    }
}
