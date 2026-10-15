package com.tebakgambar.sticker.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import b7.c;
import com.tebakgambar.network.TebakGambarApi;
import ja.d0;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import wa.l;
import y8.h;

/* JADX INFO: loaded from: classes2.dex */
public class StickerPack implements Parcelable {
    public static final Parcelable.Creator<StickerPack> CREATOR = new Parcelable.Creator<StickerPack>() { // from class: com.tebakgambar.sticker.model.StickerPack.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerPack createFromParcel(Parcel parcel) {
            return new StickerPack(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StickerPack[] newArray(int i10) {
            return new StickerPack[i10];
        }
    };

    @c("android_play_store_link")
    public String androidPlayStoreLink;
    public String identifier;

    @c("ios_app_store_link")
    public String iosAppStoreLink;

    @c("license_agreement_website")
    public String licenseAgreementWebsite;
    public String name;

    @c("privacy_policy_website")
    public String privacyPolicyWebsite;
    public String publisher;

    @c("publisher_website")
    public String publisherWebsite;
    public List<Sticker> stickers;

    @c("tray_image_file")
    public String trayImageName;

    @c("tray_image_url")
    public String trayImageUrl;

    public StickerPack() {
    }

    private boolean isStickerDownloaded(Sticker sticker, Context context) {
        File fileN = h.n(context, this.identifier + "/" + sticker.imageName);
        return fileN.exists() && fileN.length() > 0;
    }

    private boolean isTrayDownloaded(Context context) {
        File fileN = h.n(context, this.identifier + "/" + this.trayImageName);
        return fileN.exists() && fileN.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$download$0(Context context) throws Exception {
        File fileN = h.n(context, this.identifier);
        if (!fileN.exists()) {
            fileN.mkdirs();
        }
        File file = new File(fileN, this.trayImageName);
        l<d0> lVarExecute = TebakGambarApi.a().downloadFile(this.trayImageUrl).execute();
        d0 d0VarA = lVarExecute.a();
        if (!lVarExecute.f() || d0VarA == null) {
            throw new Exception("File tray image url failed");
        }
        if (!h.f(d0VarA, file, null)) {
            throw new Exception("File tray image write failed");
        }
        for (int i10 = 0; i10 < this.stickers.size(); i10++) {
            Sticker sticker = this.stickers.get(i10);
            if (!isStickerDownloaded(sticker, context)) {
                File file2 = new File(fileN, sticker.imageName);
                l<d0> lVarExecute2 = TebakGambarApi.a().downloadFile(sticker.imageUrl).execute();
                d0 d0VarA2 = lVarExecute2.a();
                if (!lVarExecute2.f() || d0VarA2 == null) {
                    throw new Exception("File url failed:" + sticker.imageUrl);
                }
                if (!h.f(d0VarA2, file2, null)) {
                    throw new Exception("File write failed:" + sticker.imageUrl);
                }
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public t1.h<Void> download(final Context context) {
        return t1.h.d(new Callable() { // from class: com.tebakgambar.sticker.model.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27227a.lambda$download$0(context);
            }
        });
    }

    public boolean isDownloaded(Context context) {
        if (!isTrayDownloaded(context)) {
            return false;
        }
        Iterator<Sticker> it = this.stickers.iterator();
        while (it.hasNext()) {
            if (!isStickerDownloaded(it.next(), context)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.identifier);
        parcel.writeString(this.licenseAgreementWebsite);
        parcel.writeString(this.name);
        parcel.writeString(this.privacyPolicyWebsite);
        parcel.writeString(this.publisher);
        parcel.writeString(this.publisherWebsite);
        parcel.writeTypedList(this.stickers);
        parcel.writeString(this.trayImageUrl);
        parcel.writeString(this.trayImageName);
    }

    protected StickerPack(Parcel parcel) {
        this.identifier = parcel.readString();
        this.licenseAgreementWebsite = parcel.readString();
        this.name = parcel.readString();
        this.privacyPolicyWebsite = parcel.readString();
        this.publisher = parcel.readString();
        this.publisherWebsite = parcel.readString();
        this.stickers = parcel.createTypedArrayList(Sticker.CREATOR);
        this.trayImageUrl = parcel.readString();
        this.trayImageName = parcel.readString();
    }
}
