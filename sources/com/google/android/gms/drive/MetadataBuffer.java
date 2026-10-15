package com.google.android.gms.drive;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.zzf;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataBuffer extends AbstractDataBuffer<Metadata> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f7733p;

    static class a extends Metadata {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final DataHolder f7734o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f7735p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f7736q;

        public a(DataHolder dataHolder, int i10) {
            this.f7734o = dataHolder;
            this.f7735p = i10;
            this.f7736q = dataHolder.c4(i10);
        }

        @Override // com.google.android.gms.drive.Metadata
        public final <T> T t(MetadataField<T> metadataField) {
            return metadataField.a(this.f7734o, this.f7735p, this.f7736q);
        }
    }

    public MetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
        dataHolder.Z3().setClassLoader(MetadataBuffer.class.getClassLoader());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.api.Releasable
    public final void c() {
        DataHolder dataHolder = this.f7300o;
        if (dataHolder != null) {
            zzf.a(dataHolder);
        }
        super.c();
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Metadata get(int i10) {
        a aVar = this.f7733p;
        if (aVar != null && aVar.f7735p == i10) {
            return aVar;
        }
        a aVar2 = new a(this.f7300o, i10);
        this.f7733p = aVar2;
        return aVar2;
    }
}
