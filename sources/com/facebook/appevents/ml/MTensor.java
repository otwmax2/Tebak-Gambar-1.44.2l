package com.facebook.appevents.ml;

import t9.g;
import t9.m;

/* JADX INFO: compiled from: MTensor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MTensor {
    public static final Companion Companion = new Companion(null);
    private int capacity;
    private float[] data;
    private int[] shape;

    /* JADX INFO: compiled from: MTensor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getCapacity(int[] iArr) {
            int i10 = 1;
            if (iArr.length == 0) {
                throw new UnsupportedOperationException("Empty array can't be reduced.");
            }
            int i11 = iArr[0];
            int iK = i9.g.k(iArr);
            if (1 <= iK) {
                while (true) {
                    i11 *= iArr[i10];
                    if (i10 == iK) {
                        break;
                    }
                    i10++;
                }
            }
            return i11;
        }
    }

    public MTensor(int[] iArr) {
        m.e(iArr, "shape");
        this.shape = iArr;
        int capacity = Companion.getCapacity(iArr);
        this.capacity = capacity;
        this.data = new float[capacity];
    }

    public final float[] getData() {
        return this.data;
    }

    public final int getShape(int i10) {
        return this.shape[i10];
    }

    public final int getShapeSize() {
        return this.shape.length;
    }

    public final void reshape(int[] iArr) {
        m.e(iArr, "shape");
        this.shape = iArr;
        int capacity = Companion.getCapacity(iArr);
        float[] fArr = new float[capacity];
        System.arraycopy(this.data, 0, fArr, 0, Math.min(this.capacity, capacity));
        this.data = fArr;
        this.capacity = capacity;
    }
}
