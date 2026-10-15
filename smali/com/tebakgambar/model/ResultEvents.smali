###### Class com.tebakgambar.model.ResultEvents (com.tebakgambar.model.ResultEvents)
.class public Lcom/tebakgambar/model/ResultEvents;
.super Lcom/tebakgambar/model/BaseEvent;
.source "ResultEvents.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/ResultEvents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/ResultEvents$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/ResultEvents$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/ResultEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/model/BaseEvent;-><init>(Landroid/os/Parcel;)V

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

    return-void
.end method

###### Class com.tebakgambar.model.ResultEvents.AnonymousClass1 (com.tebakgambar.model.ResultEvents$1)
.class Lcom/tebakgambar/model/ResultEvents$1;
.super Ljava/lang/Object;
.source "ResultEvents.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/ResultEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/ResultEvents;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/ResultEvents;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/ResultEvents;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/ResultEvents;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/ResultEvents$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/ResultEvents;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/ResultEvents;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/ResultEvents;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/ResultEvents$1;->newArray(I)[Lcom/tebakgambar/model/ResultEvents;

    move-result-object p1

    return-object p1
.end method
