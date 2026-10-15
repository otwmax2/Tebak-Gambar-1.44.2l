package f9;

import com.google.gson.s;
import com.google.gson.t;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: BindingValuesAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements t<c>, com.google.gson.k<c> {
    @Override // com.google.gson.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c a(com.google.gson.l lVar, Type type, com.google.gson.j jVar) throws com.google.gson.p {
        if (!lVar.r()) {
            return new c();
        }
        Set<Map.Entry<String, com.google.gson.l>> setY = lVar.l().y();
        HashMap map = new HashMap(32);
        for (Map.Entry<String, com.google.gson.l> entry : setY) {
            map.put(entry.getKey(), d(entry.getValue().l(), jVar));
        }
        return new c(map);
    }

    Object d(com.google.gson.o oVar, com.google.gson.j jVar) {
        com.google.gson.l lVarA = oVar.A("type");
        if (lVarA == null || !lVarA.s()) {
            return null;
        }
        String strO = lVarA.o();
        strO.hashCode();
        switch (strO) {
            case "STRING":
                return jVar.a(oVar.A("string_value"), String.class);
            case "USER":
                return jVar.a(oVar.A("user_value"), r.class);
            case "IMAGE":
                return jVar.a(oVar.A("image_value"), h.class);
            case "BOOLEAN":
                return jVar.a(oVar.A("boolean_value"), Boolean.class);
            default:
                return null;
        }
    }

    @Override // com.google.gson.t
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public com.google.gson.l b(c cVar, Type type, s sVar) {
        return null;
    }
}
