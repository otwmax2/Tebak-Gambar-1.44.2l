###### Class com.tebakgambar.model.FreeAnswer (com.tebakgambar.model.FreeAnswer)
.class public Lcom/tebakgambar/model/FreeAnswer;
.super Ljava/lang/Object;
.source "FreeAnswer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "image_url"
    .end annotation
.end field

.field public progress:I

.field public qty:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/FreeAnswer$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/FreeAnswer$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/FreeAnswer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/model/FreeAnswer;->progress:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

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
    iget p2, p0, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/tebakgambar/model/FreeAnswer;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.model.FreeAnswer.AnonymousClass1 (com.tebakgambar.model.FreeAnswer$1)
.class Lcom/tebakgambar/model/FreeAnswer$1;
.super Ljava/lang/Object;
.source "FreeAnswer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/FreeAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/FreeAnswer;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/FreeAnswer;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/FreeAnswer;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/FreeAnswer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/FreeAnswer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/FreeAnswer;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/FreeAnswer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/FreeAnswer$1;->newArray(I)[Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p1

    return-object p1
.end method
