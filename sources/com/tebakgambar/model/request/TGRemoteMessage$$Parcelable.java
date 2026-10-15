package com.tebakgambar.model.request;

import android.os.Parcel;
import android.os.Parcelable;
import ua.a;
import ua.d;
import ua.e;

/* JADX INFO: loaded from: classes2.dex */
public class TGRemoteMessage$$Parcelable implements Parcelable, d<TGRemoteMessage> {
    public static final Parcelable.Creator<TGRemoteMessage$$Parcelable> CREATOR = new Parcelable.Creator<TGRemoteMessage$$Parcelable>() { // from class: com.tebakgambar.model.request.TGRemoteMessage$$Parcelable.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TGRemoteMessage$$Parcelable createFromParcel(Parcel parcel) {
            return new TGRemoteMessage$$Parcelable(TGRemoteMessage$$Parcelable.read(parcel, new a()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TGRemoteMessage$$Parcelable[] newArray(int i10) {
            return new TGRemoteMessage$$Parcelable[i10];
        }
    };
    private TGRemoteMessage tGRemoteMessage$$0;

    public TGRemoteMessage$$Parcelable(TGRemoteMessage tGRemoteMessage) {
        this.tGRemoteMessage$$0 = tGRemoteMessage;
    }

    public static TGRemoteMessage read(Parcel parcel, a aVar) {
        int i10 = parcel.readInt();
        if (aVar.a(i10)) {
            if (aVar.d(i10)) {
                throw new e("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
            }
            return (TGRemoteMessage) aVar.b(i10);
        }
        int iG = aVar.g();
        TGRemoteMessage tGRemoteMessage = new TGRemoteMessage();
        aVar.f(iG, tGRemoteMessage);
        tGRemoteMessage.messageUrl = parcel.readString();
        tGRemoteMessage.buttonNegativeText = parcel.readString();
        tGRemoteMessage.ticker = parcel.readString();
        tGRemoteMessage.buttonPositiveText = parcel.readString();
        tGRemoteMessage.pushActionId = parcel.readString();
        tGRemoteMessage.message = parcel.readString();
        aVar.f(i10, tGRemoteMessage);
        return tGRemoteMessage;
    }

    public static void write(TGRemoteMessage tGRemoteMessage, Parcel parcel, int i10, a aVar) {
        int iC = aVar.c(tGRemoteMessage);
        if (iC != -1) {
            parcel.writeInt(iC);
            return;
        }
        parcel.writeInt(aVar.e(tGRemoteMessage));
        parcel.writeString(tGRemoteMessage.messageUrl);
        parcel.writeString(tGRemoteMessage.buttonNegativeText);
        parcel.writeString(tGRemoteMessage.ticker);
        parcel.writeString(tGRemoteMessage.buttonPositiveText);
        parcel.writeString(tGRemoteMessage.pushActionId);
        parcel.writeString(tGRemoteMessage.message);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        write(this.tGRemoteMessage$$0, parcel, i10, new a());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ua.d
    public TGRemoteMessage getParcel() {
        return this.tGRemoteMessage$$0;
    }
}
