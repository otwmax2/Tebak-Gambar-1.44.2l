###### Class com.tebakgambar.model.ResultEventClue (com.tebakgambar.model.ResultEventClue)
.class public Lcom/tebakgambar/model/ResultEventClue;
.super Lcom/tebakgambar/model/BaseEvent;
.source "ResultEventClue.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/ResultEventClue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color_clue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public image_clue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public soal_clue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/SoalClue;",
            ">;"
        }
    .end annotation
.end field

.field public tutorial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/ResultEventClue$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/ResultEventClue$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/ResultEventClue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/model/BaseEvent;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/ResultEventClue;->image_clue:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/ResultEventClue;->color_clue:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/ResultEventClue;->tutorial:Ljava/util/ArrayList;

    .line 5
    sget-object v0, Lcom/tebakgambar/model/SoalClue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/ResultEventClue;->soal_clue:Ljava/util/ArrayList;

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
    invoke-super {p0, p1, p2}, Lcom/tebakgambar/model/BaseEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/ResultEventClue;->image_clue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/ResultEventClue;->color_clue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/model/ResultEventClue;->tutorial:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/model/ResultEventClue;->soal_clue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

###### Class com.tebakgambar.model.ResultEventClue.AnonymousClass1 (com.tebakgambar.model.ResultEventClue$1)
.class Lcom/tebakgambar/model/ResultEventClue$1;
.super Ljava/lang/Object;
.source "ResultEventClue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/ResultEventClue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/ResultEventClue;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/ResultEventClue;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/ResultEventClue;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/ResultEventClue;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/ResultEventClue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/ResultEventClue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/ResultEventClue;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/ResultEventClue;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/ResultEventClue$1;->newArray(I)[Lcom/tebakgambar/model/ResultEventClue;

    move-result-object p1

    return-object p1
.end method
