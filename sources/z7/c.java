package z7;

import a8.f;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import x7.k;
import z7.a;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f37290a;

    public c(a aVar) {
        this.f37290a = aVar;
    }

    @Override // z7.a
    public JSONObject a(View view) {
        return a8.b.b(0, 0, 0, 0);
    }

    @Override // z7.a
    public void b(View view, JSONObject jSONObject, a.InterfaceC0310a interfaceC0310a, boolean z10) {
        Iterator<View> it = c().iterator();
        while (it.hasNext()) {
            interfaceC0310a.a(it.next(), this.f37290a, jSONObject);
        }
    }

    ArrayList<View> c() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        y7.a aVarA = y7.a.a();
        if (aVarA != null) {
            Collection<k> collectionE = aVarA.e();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionE.size() * 2) + 3);
            Iterator<k> it = collectionE.iterator();
            while (it.hasNext()) {
                View viewG = it.next().g();
                if (viewG != null && f.c(viewG) && (rootView = viewG.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fA = f.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && f.a(arrayList.get(size - 1)) > fA) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }
}
