package com.facebook.appevents.ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import t9.m;

/* JADX INFO: compiled from: Operator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Operator {
    public static final Operator INSTANCE = new Operator();

    private Operator() {
    }

    public static final void addmv(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            m.e(mTensor, "x");
            m.e(mTensor2, "b");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape <= 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (shape2 > 0) {
                    int i12 = 0;
                    while (true) {
                        int i13 = i12 + 1;
                        if (shape3 > 0) {
                            int i14 = 0;
                            while (true) {
                                int i15 = i14 + 1;
                                int i16 = (i10 * shape2 * shape3) + (i12 * shape3) + i14;
                                data[i16] = data[i16] + data2[i14];
                                if (i15 >= shape3) {
                                    break;
                                } else {
                                    i14 = i15;
                                }
                            }
                        }
                        if (i13 >= shape2) {
                            break;
                        } else {
                            i12 = i13;
                        }
                    }
                }
                if (i11 >= shape) {
                    return;
                } else {
                    i10 = i11;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor concatenate(MTensor[] mTensorArr) {
        int shape;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensorArr, "tensors");
            int shape2 = mTensorArr[0].getShape(0);
            int length = mTensorArr.length - 1;
            if (length >= 0) {
                int i10 = 0;
                shape = 0;
                while (true) {
                    int i11 = i10 + 1;
                    shape += mTensorArr[i10].getShape(1);
                    if (i11 > length) {
                        break;
                    }
                    i10 = i11;
                }
            } else {
                shape = 0;
            }
            MTensor mTensor = new MTensor(new int[]{shape2, shape});
            float[] data = mTensor.getData();
            if (shape2 > 0) {
                int i12 = 0;
                while (true) {
                    int i13 = i12 + 1;
                    int i14 = i12 * shape;
                    int length2 = mTensorArr.length - 1;
                    if (length2 >= 0) {
                        int i15 = 0;
                        while (true) {
                            int i16 = i15 + 1;
                            float[] data2 = mTensorArr[i15].getData();
                            int shape3 = mTensorArr[i15].getShape(1);
                            System.arraycopy(data2, i12 * shape3, data, i14, shape3);
                            i14 += shape3;
                            if (i16 > length2) {
                                break;
                            }
                            i15 = i16;
                        }
                    }
                    if (i13 >= shape2) {
                        break;
                    }
                    i12 = i13;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor conv1D(MTensor mTensor, MTensor mTensor2) {
        Class<Operator> cls;
        Class<Operator> cls2;
        MTensor mTensor3;
        Class<Operator> cls3 = Operator.class;
        if (CrashShieldHandler.isObjectCrashing(cls3)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            m.e(mTensor2, "w");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int shape4 = mTensor2.getShape(0);
            int i10 = (shape2 - shape4) + 1;
            int shape5 = mTensor2.getShape(2);
            MTensor mTensor4 = new MTensor(new int[]{shape, i10, shape5});
            float[] data = mTensor.getData();
            float[] data2 = mTensor4.getData();
            float[] data3 = mTensor2.getData();
            if (shape <= 0) {
                return mTensor4;
            }
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (shape5 > 0) {
                    int i13 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        if (i10 > 0) {
                            int i15 = 0;
                            while (true) {
                                int i16 = i15 + 1;
                                float f10 = 0.0f;
                                if (shape4 > 0) {
                                    int i17 = 0;
                                    while (true) {
                                        cls2 = cls3;
                                        int i18 = i17 + 1;
                                        if (shape3 > 0) {
                                            int i19 = 0;
                                            while (true) {
                                                mTensor3 = mTensor4;
                                                int i20 = i19 + 1;
                                                try {
                                                    f10 += data[(shape2 * shape3 * i11) + ((i17 + i15) * shape3) + i19] * data3[(((i17 * shape3) + i19) * shape5) + i13];
                                                    if (i20 >= shape3) {
                                                        break;
                                                    }
                                                    i19 = i20;
                                                    mTensor4 = mTensor3;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    cls = cls2;
                                                    CrashShieldHandler.handleThrowable(th, cls);
                                                    return null;
                                                }
                                            }
                                        } else {
                                            mTensor3 = mTensor4;
                                        }
                                        if (i18 >= shape4) {
                                            break;
                                        }
                                        i17 = i18;
                                        cls3 = cls2;
                                        mTensor4 = mTensor3;
                                    }
                                } else {
                                    cls2 = cls3;
                                    mTensor3 = mTensor4;
                                }
                                data2[(i10 * shape5 * i11) + (i15 * shape5) + i13] = f10;
                                if (i16 >= i10) {
                                    break;
                                }
                                i15 = i16;
                                cls3 = cls2;
                                mTensor4 = mTensor3;
                            }
                        } else {
                            cls2 = cls3;
                            mTensor3 = mTensor4;
                        }
                        if (i14 >= shape5) {
                            break;
                        }
                        i13 = i14;
                        cls3 = cls2;
                        mTensor4 = mTensor3;
                    }
                } else {
                    cls2 = cls3;
                    mTensor3 = mTensor4;
                }
                if (i12 >= shape) {
                    return mTensor3;
                }
                i11 = i12;
                cls3 = cls2;
                mTensor4 = mTensor3;
            }
        } catch (Throwable th2) {
            th = th2;
            cls = cls3;
        }
    }

    public static final MTensor dense(MTensor mTensor, MTensor mTensor2, MTensor mTensor3) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            m.e(mTensor2, "w");
            m.e(mTensor3, "b");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor3.getShape(0);
            MTensor mTensorMul = mul(mTensor, mTensor2);
            float[] data = mTensor3.getData();
            float[] data2 = mTensorMul.getData();
            if (shape > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (shape2 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            int i14 = (i10 * shape2) + i12;
                            data2[i14] = data2[i14] + data[i12];
                            if (i13 >= shape2) {
                                break;
                            }
                            i12 = i13;
                        }
                    }
                    if (i11 >= shape) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return mTensorMul;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor embedding(String[] strArr, int i10, MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(strArr, "texts");
            m.e(mTensor, "w");
            int length = strArr.length;
            int shape = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{length, i10, shape});
            float[] data = mTensor2.getData();
            float[] data2 = mTensor.getData();
            if (length > 0) {
                int i11 = 0;
                while (true) {
                    int i12 = i11 + 1;
                    int[] iArrVectorize = Utils.INSTANCE.vectorize(strArr[i11], i10);
                    if (i10 > 0) {
                        int i13 = 0;
                        while (true) {
                            int i14 = i13 + 1;
                            System.arraycopy(data2, iArrVectorize[i13] * shape, data, (shape * i10 * i11) + (i13 * shape), shape);
                            if (i14 >= i10) {
                                break;
                            }
                            i13 = i14;
                        }
                    }
                    if (i12 >= length) {
                        break;
                    }
                    i11 = i12;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void flatten(MTensor mTensor, int i10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            m.e(mTensor, "x");
            if (i10 >= mTensor.getShapeSize()) {
                return;
            }
            int shapeSize = mTensor.getShapeSize();
            int shape = 1;
            if (i10 < shapeSize) {
                int i11 = i10;
                while (true) {
                    int i12 = i11 + 1;
                    shape *= mTensor.getShape(i11);
                    if (i12 >= shapeSize) {
                        break;
                    } else {
                        i11 = i12;
                    }
                }
            }
            int[] iArr = new int[i10 + 1];
            int i13 = 0;
            if (i10 > 0) {
                while (true) {
                    int i14 = i13 + 1;
                    iArr[i13] = mTensor.getShape(i13);
                    if (i14 >= i10) {
                        break;
                    } else {
                        i13 = i14;
                    }
                }
            }
            iArr[i10] = shape;
            mTensor.reshape(iArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor maxPool1D(MTensor mTensor, int i10) {
        int i11;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int i12 = (shape2 - i10) + 1;
            MTensor mTensor2 = new MTensor(new int[]{shape, i12, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    if (shape3 > 0) {
                        int i15 = 0;
                        while (true) {
                            int i16 = i15 + 1;
                            if (i12 > 0) {
                                int i17 = 0;
                                while (true) {
                                    int i18 = i17 + 1;
                                    int i19 = i17 * shape3;
                                    int i20 = (i13 * i12 * shape3) + i19 + i15;
                                    int i21 = (i13 * shape2 * shape3) + i19 + i15;
                                    data2[i20] = Float.MIN_VALUE;
                                    if (i10 > 0) {
                                        int i22 = 0;
                                        while (true) {
                                            int i23 = i22 + 1;
                                            i11 = shape2;
                                            data2[i20] = Math.max(data2[i20], data[i21 + (i22 * shape3)]);
                                            if (i23 >= i10) {
                                                break;
                                            }
                                            i22 = i23;
                                            shape2 = i11;
                                        }
                                    } else {
                                        i11 = shape2;
                                    }
                                    if (i18 >= i12) {
                                        break;
                                    }
                                    i17 = i18;
                                    shape2 = i11;
                                }
                            } else {
                                i11 = shape2;
                            }
                            if (i16 >= shape3) {
                                break;
                            }
                            i15 = i16;
                            shape2 = i11;
                        }
                    } else {
                        i11 = shape2;
                    }
                    if (i14 >= shape) {
                        break;
                    }
                    i13 = i14;
                    shape2 = i11;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor mul(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            m.e(mTensor2, "w");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor2.getShape(0);
            int shape3 = mTensor2.getShape(1);
            MTensor mTensor3 = new MTensor(new int[]{shape, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            float[] data3 = mTensor3.getData();
            if (shape > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (shape3 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            int i14 = (i10 * shape3) + i12;
                            data3[i14] = 0.0f;
                            if (shape2 > 0) {
                                int i15 = 0;
                                while (true) {
                                    int i16 = i15 + 1;
                                    data3[i14] = data3[i14] + (data[(i10 * shape2) + i15] * data2[(i15 * shape3) + i12]);
                                    if (i16 >= shape2) {
                                        break;
                                    }
                                    i15 = i16;
                                }
                            }
                            if (i13 >= shape3) {
                                break;
                            }
                            i12 = i13;
                        }
                    }
                    if (i11 >= shape) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return mTensor3;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void relu(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            m.e(mTensor, "x");
            float[] data = mTensor.getData();
            int i10 = 0;
            int length = data.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i11 = i10 + 1;
                if (data[i10] < 0.0f) {
                    data[i10] = 0.0f;
                }
                if (i11 > length) {
                    return;
                } else {
                    i10 = i11;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final void softmax(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            m.e(mTensor, "x");
            int i10 = 0;
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape <= 0) {
                return;
            }
            while (true) {
                int i11 = i10 + 1;
                int i12 = i10 * shape2;
                int i13 = i12 + shape2;
                float f10 = Float.MIN_VALUE;
                float f11 = 0.0f;
                if (i12 < i13) {
                    int i14 = i12;
                    while (true) {
                        int i15 = i14 + 1;
                        if (data[i14] > f10) {
                            f10 = data[i14];
                        }
                        if (i15 >= i13) {
                            break;
                        } else {
                            i14 = i15;
                        }
                    }
                }
                if (i12 < i13) {
                    int i16 = i12;
                    while (true) {
                        int i17 = i16 + 1;
                        data[i16] = (float) Math.exp(data[i16] - f10);
                        f11 += data[i16];
                        if (i17 >= i13) {
                            break;
                        } else {
                            i16 = i17;
                        }
                    }
                }
                if (i12 < i13) {
                    while (true) {
                        int i18 = i12 + 1;
                        data[i12] = data[i12] / f11;
                        if (i18 >= i13) {
                            break;
                        } else {
                            i12 = i18;
                        }
                    }
                }
                if (i11 >= shape) {
                    return;
                } else {
                    i10 = i11;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor transpose2D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (shape2 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            data2[(i12 * shape) + i10] = data[(i10 * shape2) + i12];
                            if (i13 >= shape2) {
                                break;
                            }
                            i12 = i13;
                        }
                    }
                    if (i11 >= shape) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor transpose3D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            m.e(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            MTensor mTensor2 = new MTensor(new int[]{shape3, shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (shape2 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            if (shape3 > 0) {
                                int i14 = 0;
                                while (true) {
                                    int i15 = i14 + 1;
                                    data2[(i14 * shape * shape2) + (i12 * shape) + i10] = data[(i10 * shape2 * shape3) + (i12 * shape3) + i14];
                                    if (i15 >= shape3) {
                                        break;
                                    }
                                    i14 = i15;
                                }
                            }
                            if (i13 >= shape2) {
                                break;
                            }
                            i12 = i13;
                        }
                    }
                    if (i11 >= shape) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }
}
