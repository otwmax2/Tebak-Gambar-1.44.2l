###### Class com.tebakgambar.model.SoalClue (com.tebakgambar.model.SoalClue)
.class public Lcom/tebakgambar/model/SoalClue;
.super Ljava/lang/Object;
.source "SoalClue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/SoalClue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/Clue;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/SoalClue$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/SoalClue$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/SoalClue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/SoalClue;->id:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/tebakgambar/model/Clue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

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
    iget-object p2, p0, Lcom/tebakgambar/model/SoalClue;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

###### Class com.tebakgambar.model.SoalClue.AnonymousClass1 (com.tebakgambar.model.SoalClue$1)
.class Lcom/tebakgambar/model/SoalClue$1;
.super Ljava/lang/Object;
.source "SoalClue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/SoalClue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/SoalClue;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/SoalClue;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/SoalClue;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/SoalClue;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/SoalClue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/SoalClue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/SoalClue;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/SoalClue;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/SoalClue$1;->newArray(I)[Lcom/tebakgambar/model/SoalClue;

    move-result-object p1

    return-object p1
.end method
