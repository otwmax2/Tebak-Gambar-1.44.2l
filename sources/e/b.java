package e;

import android.content.Context;
import android.content.Intent;
import e.a;
import h9.q;
import i9.c0;
import i9.d0;
import i9.t;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import t9.g;
import t9.m;
import y9.l;

/* JADX INFO: compiled from: ActivityResultContracts.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends e.a<String[], Map<String, Boolean>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f28886a = new a(null);

    /* JADX INFO: compiled from: ActivityResultContracts.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(String[] strArr) {
            m.e(strArr, "input");
            Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
            m.d(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
            return intentPutExtra;
        }
    }

    @Override // e.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Intent createIntent(Context context, String[] strArr) {
        m.e(context, "context");
        m.e(strArr, "input");
        return f28886a.a(strArr);
    }

    @Override // e.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a.C0149a<Map<String, Boolean>> getSynchronousResult(Context context, String[] strArr) {
        m.e(context, "context");
        m.e(strArr, "input");
        boolean z10 = true;
        if (strArr.length == 0) {
            return new a.C0149a<>(d0.d());
        }
        int length = strArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (!(androidx.core.content.a.a(context, strArr[i10]) == 0)) {
                z10 = false;
                break;
            }
            i10++;
        }
        if (!z10) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(l.a(c0.a(strArr.length), 16));
        for (String str : strArr) {
            h9.m mVarA = q.a(str, Boolean.TRUE);
            linkedHashMap.put(mVarA.c(), mVarA.d());
        }
        return new a.C0149a<>(linkedHashMap);
    }

    @Override // e.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Map<String, Boolean> parseResult(int i10, Intent intent) {
        if (i10 != -1) {
            return d0.d();
        }
        if (intent == null) {
            return d0.d();
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return d0.d();
        }
        ArrayList arrayList = new ArrayList(intArrayExtra.length);
        for (int i11 : intArrayExtra) {
            arrayList.add(Boolean.valueOf(i11 == 0));
        }
        return d0.j(t.T(i9.g.i(stringArrayExtra), arrayList));
    }
}
