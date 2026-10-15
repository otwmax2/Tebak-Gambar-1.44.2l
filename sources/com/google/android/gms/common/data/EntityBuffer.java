package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7329p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList<Integer> f7330q;

    @KeepForSdk
    protected EntityBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.f7329p = false;
    }

    private final void l() {
        synchronized (this) {
            if (!this.f7329p) {
                int count = ((DataHolder) Preconditions.k(this.f7300o)).getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.f7330q = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String strJ = j();
                    String strB4 = this.f7300o.b4(strJ, 0, this.f7300o.c4(0));
                    for (int i10 = 1; i10 < count; i10++) {
                        int iC4 = this.f7300o.c4(i10);
                        String strB42 = this.f7300o.b4(strJ, i10, iC4);
                        if (strB42 == null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(strJ).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(strJ);
                            sb.append(", at row: ");
                            sb.append(i10);
                            sb.append(", for window: ");
                            sb.append(iC4);
                            throw new NullPointerException(sb.toString());
                        }
                        if (!strB42.equals(strB4)) {
                            this.f7330q.add(Integer.valueOf(i10));
                            strB4 = strB42;
                        }
                    }
                }
                this.f7329p = true;
            }
        }
    }

    @KeepForSdk
    protected String g() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public final T get(int i10) {
        int iIntValue;
        int iIntValue2;
        l();
        int iK = k(i10);
        int i11 = 0;
        if (i10 >= 0 && i10 != this.f7330q.size()) {
            if (i10 == this.f7330q.size() - 1) {
                iIntValue = ((DataHolder) Preconditions.k(this.f7300o)).getCount();
                iIntValue2 = this.f7330q.get(i10).intValue();
            } else {
                iIntValue = this.f7330q.get(i10 + 1).intValue();
                iIntValue2 = this.f7330q.get(i10).intValue();
            }
            int i12 = iIntValue - iIntValue2;
            if (i12 == 1) {
                int iK2 = k(i10);
                int iC4 = ((DataHolder) Preconditions.k(this.f7300o)).c4(iK2);
                String strG = g();
                if (strG == null || this.f7300o.b4(strG, iK2, iC4) != null) {
                    i11 = 1;
                }
            } else {
                i11 = i12;
            }
        }
        return i(iK, i11);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        l();
        return this.f7330q.size();
    }

    @KeepForSdk
    protected abstract T i(int i10, int i11);

    @KeepForSdk
    protected abstract String j();

    final int k(int i10) {
        if (i10 >= 0 && i10 < this.f7330q.size()) {
            return this.f7330q.get(i10).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i10);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }
}
