###### Class com.tebakgambar.model.Clue (com.tebakgambar.model.Clue)
.class public Lcom/tebakgambar/model/Clue;
.super Ljava/lang/Object;
.source "Clue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/Clue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public jawaban:Ljava/lang/String;

.field public soal_image_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/Clue$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/Clue$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/Clue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.model.Clue.AnonymousClass1 (com.tebakgambar.model.Clue$1)
.class Lcom/tebakgambar/model/Clue$1;
.super Ljava/lang/Object;
.source "Clue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Clue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/Clue;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/Clue;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/Clue;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/Clue;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/Clue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/Clue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/Clue;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/Clue;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/Clue$1;->newArray(I)[Lcom/tebakgambar/model/Clue;

    move-result-object p1

    return-object p1
.end method
