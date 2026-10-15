package com.tebakgambar.model.enums;

import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum RatingType {
    ONE(1),
    TWO(2),
    THREE(3),
    FORE(4),
    FIVE(5);

    public static Map<Integer, RatingType> valuesMap = new HashMap();
    private int value;

    /* JADX INFO: renamed from: com.tebakgambar.model.enums.RatingType$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tebakgambar$model$enums$RatingType;

        static {
            int[] iArr = new int[RatingType.values().length];
            $SwitchMap$com$tebakgambar$model$enums$RatingType = iArr;
            try {
                iArr[RatingType.ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tebakgambar$model$enums$RatingType[RatingType.TWO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tebakgambar$model$enums$RatingType[RatingType.THREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tebakgambar$model$enums$RatingType[RatingType.FORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$tebakgambar$model$enums$RatingType[RatingType.FIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        for (RatingType ratingType : values()) {
            valuesMap.put(Integer.valueOf(ratingType.value), ratingType);
        }
    }

    RatingType(int i10) {
        this.value = i10;
    }

    public static RatingType castIntToEnum(int i10) {
        return valuesMap.get(Integer.valueOf(i10));
    }

    public String description() {
        int i10 = AnonymousClass1.$SwitchMap$com$tebakgambar$model$enums$RatingType[ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? BuildConfig.FLAVOR : "Mantap" : "Seru banget" : "Boleh juga" : "Bisa lebih baik" : "Tingkatkan lagi ya";
    }
}
