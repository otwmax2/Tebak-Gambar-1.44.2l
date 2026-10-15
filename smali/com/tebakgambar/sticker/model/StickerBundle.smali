###### Class com.tebakgambar.sticker.model.StickerBundle (com.tebakgambar.sticker.model.StickerBundle)
.class public Lcom/tebakgambar/sticker/model/StickerBundle;
.super Ljava/lang/Object;
.source "StickerBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/StickerBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public androidPlayStoreLink:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "android_play_store_link"
    .end annotation
.end field

.field public iosAppStoreLink:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "ios_app_store_link"
    .end annotation
.end field

.field public stickerPacks:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "sticker_packs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/StickerPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerBundle$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/StickerBundle$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/StickerBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->androidPlayStoreLink:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->iosAppStoreLink:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/tebakgambar/sticker/model/StickerPack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->stickerPacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->androidPlayStoreLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->iosAppStoreLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerBundle;->stickerPacks:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerBundle.AnonymousClass1 (com.tebakgambar.sticker.model.StickerBundle$1)
.class Lcom/tebakgambar/sticker/model/StickerBundle$1;
.super Ljava/lang/Object;
.source "StickerBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/StickerBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerBundle;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerBundle;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/StickerBundle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerBundle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerBundle;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/StickerBundle;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/StickerBundle;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerBundle$1;->newArray(I)[Lcom/tebakgambar/sticker/model/StickerBundle;

    move-result-object p1

    return-object p1
.end method
