###### Class com.tebakgambar.model.response.StickerCampaignResult (com.tebakgambar.model.response.StickerCampaignResult)
.class public Lcom/tebakgambar/model/response/StickerCampaignResult;
.super Ljava/lang/Object;
.source "StickerCampaignResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public buttonImageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "button_image_url"
    .end annotation
.end field

.field public campaignDetails:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "campaign_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/response/StickerCampaignResult$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/response/StickerCampaignResult$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/response/StickerCampaignResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->buttonImageUrl:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->campaignDetails:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->version:I

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
    iget-object p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->buttonImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->campaignDetails:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.tebakgambar.model.response.StickerCampaignResult.AnonymousClass1 (com.tebakgambar.model.response.StickerCampaignResult$1)
.class Lcom/tebakgambar/model/response/StickerCampaignResult$1;
.super Ljava/lang/Object;
.source "StickerCampaignResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/response/StickerCampaignResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/response/StickerCampaignResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/response/StickerCampaignResult;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/response/StickerCampaignResult;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/response/StickerCampaignResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/response/StickerCampaignResult;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/response/StickerCampaignResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult$1;->newArray(I)[Lcom/tebakgambar/model/response/StickerCampaignResult;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.model.response.StickerCampaignResult.CampaignDetail (com.tebakgambar.model.response.StickerCampaignResult$CampaignDetail)
.class public Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;
.super Ljava/lang/Object;
.source "StickerCampaignResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/response/StickerCampaignResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CampaignDetail"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coverImageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "cover_image_url"
    .end annotation
.end field

.field public id:I

.field public isEnabled:Z
    .annotation runtime Lb7/c;
        value = "is_enable"
    .end annotation
.end field

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->id:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->version:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->coverImageUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iput-boolean p1, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->isEnabled:Z

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
    iget p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->coverImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->isEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

###### Class com.tebakgambar.model.response.StickerCampaignResult.CampaignDetail.AnonymousClass1 (com.tebakgambar.model.response.StickerCampaignResult$CampaignDetail$1)
.class Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail$1;
.super Ljava/lang/Object;
.source "StickerCampaignResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail$1;->newArray(I)[Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    move-result-object p1

    return-object p1
.end method
