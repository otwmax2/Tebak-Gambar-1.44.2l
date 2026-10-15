package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzbg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class m extends AbstractSafeParcelable {
    public static final Parcelable.Creator<m> CREATOR = new p();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<g5.g0> f30716o;

    @SafeParcelable.Constructor
    m(@SafeParcelable.Param List<g5.g0> list) {
        this.f30716o = list == null ? zzbg.m() : list;
    }

    public static m V3(List<g5.z> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (g5.z zVar : list) {
            if (zVar instanceof g5.g0) {
                arrayList.add((g5.g0) zVar);
            }
        }
        return new m(arrayList);
    }

    public final List<g5.z> W3() {
        ArrayList arrayList = new ArrayList();
        Iterator<g5.g0> it = this.f30716o.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 1, this.f30716o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
