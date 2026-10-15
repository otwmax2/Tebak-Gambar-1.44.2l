package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.r0;

/* JADX INFO: compiled from: AbstractParser.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<MessageType extends r0> implements z0<MessageType> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final p f2652a = p.b();

    private MessageType c(MessageType messagetype) throws b0 {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw d(messagetype).a().i(messagetype);
    }

    private m1 d(MessageType messagetype) {
        return messagetype instanceof a ? ((a) messagetype).l() : new m1(messagetype);
    }

    @Override // androidx.datastore.preferences.protobuf.z0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public MessageType a(h hVar, p pVar) throws b0 {
        return (MessageType) c(f(hVar, pVar));
    }

    public MessageType f(h hVar, p pVar) throws b0 {
        try {
            i iVarS = hVar.s();
            MessageType messagetypeB = b(iVarS, pVar);
            try {
                iVarS.a(0);
                return messagetypeB;
            } catch (b0 e10) {
                throw e10.i(messagetypeB);
            }
        } catch (b0 e11) {
            throw e11;
        }
    }
}
