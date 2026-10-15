###### Class com.tebakgambar.model.SoalSogam (com.tebakgambar.model.SoalSogam)
.class public Lcom/tebakgambar/model/SoalSogam;
.super Ljava/lang/Object;
.source "SoalSogam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/SoalSogam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public default_point:Ljava/lang/Integer;

.field public duration:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field public jawaban:Ljava/lang/String;

.field public jawaban1:Ljava/lang/String;

.field public jawaban2:Ljava/lang/String;

.field public soal_image_url:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/SoalSogam$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/SoalSogam$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/SoalSogam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->username:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban1:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban2:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->soal_image_url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->duration:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->default_point:Ljava/lang/Integer;

    const-string v0, "REGULAR"

    .line 10
    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->username:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban1:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban2:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->soal_image_url:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->duration:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->default_point:Ljava/lang/Integer;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/SoalSogam;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRegularType()Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/SoalSogam;->type:Ljava/lang/String;

    const-string v1, "COUNTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->jawaban2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->soal_image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->duration:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->default_point:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/tebakgambar/model/SoalSogam;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.model.SoalSogam.AnonymousClass1 (com.tebakgambar.model.SoalSogam$1)
.class Lcom/tebakgambar/model/SoalSogam$1;
.super Ljava/lang/Object;
.source "SoalSogam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/SoalSogam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/SoalSogam;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/SoalSogam;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/SoalSogam;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/SoalSogam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/SoalSogam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/SoalSogam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/SoalSogam;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/SoalSogam;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/SoalSogam$1;->newArray(I)[Lcom/tebakgambar/model/SoalSogam;

    move-result-object p1

    return-object p1
.end method
