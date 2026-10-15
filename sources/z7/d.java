package z7;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
import z7.a;

/* JADX INFO: loaded from: classes2.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f37291a = new int[2];

    private void c(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0310a interfaceC0310a) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            interfaceC0310a.a(viewGroup.getChildAt(i10), this, jSONObject);
        }
    }

    @TargetApi(21)
    private void d(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0310a interfaceC0310a) {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(map.keySet());
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                interfaceC0310a.a((View) it2.next(), this, jSONObject);
            }
        }
    }

    @Override // z7.a
    public JSONObject a(View view) {
        if (view == null) {
            return a8.b.b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f37291a);
        int[] iArr = this.f37291a;
        return a8.b.b(iArr[0], iArr[1], width, height);
    }

    @Override // z7.a
    public void b(View view, JSONObject jSONObject, a.InterfaceC0310a interfaceC0310a, boolean z10) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z10 || Build.VERSION.SDK_INT < 21) {
                c(viewGroup, jSONObject, interfaceC0310a);
            } else {
                d(viewGroup, jSONObject, interfaceC0310a);
            }
        }
    }
}
