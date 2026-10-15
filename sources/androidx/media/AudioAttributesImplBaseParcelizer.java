package androidx.media;

import androidx.versionedparcelable.a;

/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f3603a = aVar.p(audioAttributesImplBase.f3603a, 1);
        audioAttributesImplBase.f3604b = aVar.p(audioAttributesImplBase.f3604b, 2);
        audioAttributesImplBase.f3605c = aVar.p(audioAttributesImplBase.f3605c, 3);
        audioAttributesImplBase.f3606d = aVar.p(audioAttributesImplBase.f3606d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        aVar.x(false, false);
        aVar.F(audioAttributesImplBase.f3603a, 1);
        aVar.F(audioAttributesImplBase.f3604b, 2);
        aVar.F(audioAttributesImplBase.f3605c, 3);
        aVar.F(audioAttributesImplBase.f3606d, 4);
    }
}
