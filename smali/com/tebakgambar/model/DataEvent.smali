###### Class com.tebakgambar.model.DataEvent (com.tebakgambar.model.DataEvent)
.class public Lcom/tebakgambar/model/DataEvent;
.super Ljava/lang/Object;
.source "DataEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/DataEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public finished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public last:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/DataEvent$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/DataEvent$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/DataEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tebakgambar/model/DataEvent;->id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tebakgambar/model/DataEvent;->last:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/DataEvent;->finished:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/DataEvent;->id:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/DataEvent;->last:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/model/DataEvent;->finished:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

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
    iget-object p2, p0, Lcom/tebakgambar/model/DataEvent;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/DataEvent;->last:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/DataEvent;->finished:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method

###### Class com.tebakgambar.model.DataEvent.AnonymousClass1 (com.tebakgambar.model.DataEvent$1)
.class Lcom/tebakgambar/model/DataEvent$1;
.super Ljava/lang/Object;
.source "DataEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/DataEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/DataEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/DataEvent;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/DataEvent;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/DataEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/DataEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/DataEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/DataEvent;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/DataEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/DataEvent$1;->newArray(I)[Lcom/tebakgambar/model/DataEvent;

    move-result-object p1

    return-object p1
.end method
