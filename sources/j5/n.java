package j5;

import android.text.TextUtils;
import com.google.android.gms.internal.firebase_auth.zzbg;
import com.google.android.gms.internal.firebase_auth.zzfh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class n {
    public static g5.z a(zzfh zzfhVar) {
        if (zzfhVar == null || TextUtils.isEmpty(zzfhVar.V3())) {
            return null;
        }
        return new g5.g0(zzfhVar.W3(), zzfhVar.X3(), zzfhVar.Y3(), zzfhVar.V3());
    }

    public static List<g5.z> b(List<zzfh> list) {
        if (list == null || list.isEmpty()) {
            return zzbg.m();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<zzfh> it = list.iterator();
        while (it.hasNext()) {
            g5.z zVarA = a(it.next());
            if (zVarA != null) {
                arrayList.add(zVarA);
            }
        }
        return arrayList;
    }
}
