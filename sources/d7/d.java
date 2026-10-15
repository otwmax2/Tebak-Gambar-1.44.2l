package d7;

import com.google.gson.t;
import com.google.gson.w;
import com.google.gson.x;

/* JADX INFO: compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements x {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c7.c f28645o;

    public d(c7.c cVar) {
        this.f28645o = cVar;
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        b7.b bVar = (b7.b) aVar.getRawType().getAnnotation(b7.b.class);
        if (bVar == null) {
            return null;
        }
        return (w<T>) b(this.f28645o, fVar, aVar, bVar);
    }

    w<?> b(c7.c cVar, com.google.gson.f fVar, g7.a<?> aVar, b7.b bVar) {
        w<?> lVar;
        Object objA = cVar.a(g7.a.get((Class) bVar.value())).a();
        if (objA instanceof w) {
            lVar = (w) objA;
        } else if (objA instanceof x) {
            lVar = ((x) objA).a(fVar, aVar);
        } else {
            boolean z10 = objA instanceof t;
            if (!z10 && !(objA instanceof com.google.gson.k)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objA.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            lVar = new l<>(z10 ? (t) objA : null, objA instanceof com.google.gson.k ? (com.google.gson.k) objA : null, fVar, aVar, null);
        }
        return (lVar == null || !bVar.nullSafe()) ? lVar : lVar.a();
    }
}
