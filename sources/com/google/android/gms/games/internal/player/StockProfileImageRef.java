package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class StockProfileImageRef extends DataBufferRef implements StockProfileImage {
    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public final Uri J() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public String L1() {
        return x("image_url");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        throw new NoSuchMethodError();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        throw new NoSuchMethodError();
    }
}
