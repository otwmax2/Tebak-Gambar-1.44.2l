###### Class com.tebakgambar.sticker.model.Sticker (com.tebakgambar.sticker.model.Sticker)
.class public Lcom/tebakgambar/sticker/model/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/Sticker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imageName:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "image_file"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "image_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/Sticker$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/Sticker$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/Sticker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/Sticker;->emojis:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/Sticker;->imageUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/Sticker;->imageName:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/Sticker;->emojis:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/Sticker;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/Sticker;->imageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.Sticker.AnonymousClass1 (com.tebakgambar.sticker.model.Sticker$1)
.class Lcom/tebakgambar/sticker/model/Sticker$1;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/Sticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/Sticker;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/Sticker;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/Sticker;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/Sticker;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/Sticker$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/Sticker;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/Sticker;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/Sticker;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/Sticker$1;->newArray(I)[Lcom/tebakgambar/sticker/model/Sticker;

    move-result-object p1

    return-object p1
.end method
