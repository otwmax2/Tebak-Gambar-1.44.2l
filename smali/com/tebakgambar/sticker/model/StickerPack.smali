###### Class com.tebakgambar.sticker.model.StickerPack (com.tebakgambar.sticker.model.StickerPack)
.class public Lcom/tebakgambar/sticker/model/StickerPack;
.super Ljava/lang/Object;
.source "StickerPack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/StickerPack;",
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

.field public identifier:Ljava/lang/String;

.field public iosAppStoreLink:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "ios_app_store_link"
    .end annotation
.end field

.field public licenseAgreementWebsite:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "license_agreement_website"
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public privacyPolicyWebsite:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "privacy_policy_website"
    .end annotation
.end field

.field public publisher:Ljava/lang/String;

.field public publisherWebsite:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "publisher_website"
    .end annotation
.end field

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field public trayImageName:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "tray_image_file"
    .end annotation
.end field

.field public trayImageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "tray_image_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerPack$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/StickerPack$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/StickerPack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->licenseAgreementWebsite:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->privacyPolicyWebsite:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->publisher:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->publisherWebsite:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/tebakgambar/sticker/model/Sticker;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lcom/tebakgambar/sticker/model/StickerPack;Landroid/content/Context;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/model/StickerPack;->lambda$download$0(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private isStickerDownloaded(Lcom/tebakgambar/sticker/model/Sticker;Landroid/content/Context;)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tebakgambar/sticker/model/Sticker;->imageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ly8/h;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method private isTrayDownloaded(Landroid/content/Context;)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/h;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method private synthetic lambda$download$0(Landroid/content/Context;)Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    invoke-static {p1, v0}, Ly8/h;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->a()Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;->downloadFile(Ljava/lang/String;)Lwa/b;

    move-result-object v2

    invoke-interface {v2}, Lwa/b;->execute()Lwa/l;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lja/d0;

    .line 7
    invoke-virtual {v2}, Lwa/l;->f()Z

    move-result v2

    if-eqz v2, :cond_b8

    if-eqz v3, :cond_b8

    const/4 v2, 0x0

    .line 8
    invoke-static {v3, v1, v2}, Ly8/h;->f(Lja/d0;Ljava/io/File;Ly8/h$a;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const/4 v1, 0x0

    .line 9
    :goto_3a
    iget-object v3, p0, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_af

    .line 10
    iget-object v3, p0, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/sticker/model/Sticker;

    .line 11
    invoke-direct {p0, v3, p1}, Lcom/tebakgambar/sticker/model/StickerPack;->isStickerDownloaded(Lcom/tebakgambar/sticker/model/Sticker;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_7a

    .line 12
    :cond_51
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/tebakgambar/sticker/model/Sticker;->imageName:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->a()Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    move-result-object v5

    iget-object v6, v3, Lcom/tebakgambar/sticker/model/Sticker;->imageUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;->downloadFile(Ljava/lang/String;)Lwa/b;

    move-result-object v5

    invoke-interface {v5}, Lwa/b;->execute()Lwa/l;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lja/d0;

    .line 15
    invoke-virtual {v5}, Lwa/l;->f()Z

    move-result v5

    if-eqz v5, :cond_96

    if-eqz v6, :cond_96

    .line 16
    invoke-static {v6, v4, v2}, Ly8/h;->f(Lja/d0;Ljava/io/File;Ly8/h$a;)Z

    move-result v4

    if-eqz v4, :cond_7d

    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 17
    :cond_7d
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File write failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/tebakgambar/sticker/model/Sticker;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_96
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File url failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/tebakgambar/sticker/model/Sticker;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_af
    return-object v2

    .line 19
    :cond_b0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "File tray image write failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_b8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "File tray image url failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_c1

    :goto_c0
    throw p1

    :goto_c1
    goto :goto_c0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public download(Landroid/content/Context;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/a;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/sticker/model/a;-><init>(Lcom/tebakgambar/sticker/model/StickerPack;Landroid/content/Context;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public isDownloaded(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/model/StickerPack;->isTrayDownloaded(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/sticker/model/Sticker;

    .line 3
    invoke-direct {p0, v2, p1}, Lcom/tebakgambar/sticker/model/StickerPack;->isStickerDownloaded(Lcom/tebakgambar/sticker/model/Sticker;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->identifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->licenseAgreementWebsite:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->privacyPolicyWebsite:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->publisher:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->publisherWebsite:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->stickers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerPack;->trayImageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerPack.AnonymousClass1 (com.tebakgambar.sticker.model.StickerPack$1)
.class Lcom/tebakgambar/sticker/model/StickerPack$1;
.super Ljava/lang/Object;
.source "StickerPack.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerPack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/StickerPack;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerPack;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerPack;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/StickerPack;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerPack$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerPack;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/StickerPack;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/StickerPack;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerPack$1;->newArray(I)[Lcom/tebakgambar/sticker/model/StickerPack;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.sticker.model.a (com.tebakgambar.sticker.model.a)
.class public final synthetic Lcom/tebakgambar/sticker/model/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sticker/model/StickerPack;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/model/StickerPack;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/a;->a:Lcom/tebakgambar/sticker/model/StickerPack;

    iput-object p2, p0, Lcom/tebakgambar/sticker/model/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/sticker/model/a;->a:Lcom/tebakgambar/sticker/model/StickerPack;

    iget-object v1, p0, Lcom/tebakgambar/sticker/model/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tebakgambar/sticker/model/StickerPack;->h(Lcom/tebakgambar/sticker/model/StickerPack;Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
