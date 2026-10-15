###### Class com.tebakgambar.model.CustomBanner$$Parcelable (com.tebakgambar.model.CustomBanner$$Parcelable)
.class public Lcom/tebakgambar/model/CustomBanner$$Parcelable;
.super Ljava/lang/Object;
.source "CustomBanner$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lua/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lua/d<",
        "Lcom/tebakgambar/model/CustomBanner;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/CustomBanner$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customBanner$$0:Lcom/tebakgambar/model/CustomBanner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/CustomBanner$$Parcelable$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/CustomBanner$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/tebakgambar/model/CustomBanner;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->customBanner$$0:Lcom/tebakgambar/model/CustomBanner;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lua/a;)Lcom/tebakgambar/model/CustomBanner;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lua/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3
    invoke-virtual {p1, v0}, Lua/a;->d(I)Z

    move-result p0

    if-nez p0, :cond_17

    .line 4
    invoke-virtual {p1, v0}, Lua/a;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/model/CustomBanner;

    return-object p0

    .line 5
    :cond_17
    new-instance p0, Lua/e;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lua/e;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1f
    invoke-virtual {p1}, Lua/a;->g()I

    move-result v1

    .line 7
    new-instance v2, Lcom/tebakgambar/model/CustomBanner;

    invoke-direct {v2}, Lcom/tebakgambar/model/CustomBanner;-><init>()V

    .line 8
    invoke-virtual {p1, v1, v2}, Lua/a;->f(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->negative:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->endDate:Ljava/util/Date;

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->webUrl:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->imageUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->description:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->positive:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->title:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v2, Lcom/tebakgambar/model/CustomBanner;->type:I

    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v2, Lcom/tebakgambar/model/CustomBanner;->startDate:Ljava/util/Date;

    .line 18
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    iput p0, v2, Lcom/tebakgambar/model/CustomBanner;->status:I

    .line 19
    invoke-virtual {p1, v0, v2}, Lua/a;->f(ILjava/lang/Object;)V

    return-object v2
.end method

.method public static write(Lcom/tebakgambar/model/CustomBanner;Landroid/os/Parcel;ILua/a;)V
    .registers 5

    .line 1
    invoke-virtual {p3, p0}, Lua/a;->c(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_b

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 3
    :cond_b
    invoke-virtual {p3, p0}, Lua/a;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->negative:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->endDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 6
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->positive:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/tebakgambar/model/CustomBanner;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/tebakgambar/model/CustomBanner;->startDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 13
    iget p0, p0, Lcom/tebakgambar/model/CustomBanner;->status:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/tebakgambar/model/CustomBanner;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->customBanner$$0:Lcom/tebakgambar/model/CustomBanner;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->getParcel()Lcom/tebakgambar/model/CustomBanner;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->customBanner$$0:Lcom/tebakgambar/model/CustomBanner;

    new-instance v1, Lua/a;

    invoke-direct {v1}, Lua/a;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->write(Lcom/tebakgambar/model/CustomBanner;Landroid/os/Parcel;ILua/a;)V

    return-void
.end method

###### Class com.tebakgambar.model.CustomBanner$$Parcelable.AnonymousClass1 (com.tebakgambar.model.CustomBanner$$Parcelable$1)
.class Lcom/tebakgambar/model/CustomBanner$$Parcelable$1;
.super Ljava/lang/Object;
.source "CustomBanner$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/CustomBanner$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/CustomBanner$$Parcelable;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/CustomBanner$$Parcelable;
    .registers 4

    .line 2
    new-instance v0, Lcom/tebakgambar/model/CustomBanner$$Parcelable;

    new-instance v1, Lua/a;

    invoke-direct {v1}, Lua/a;-><init>()V

    invoke-static {p1, v1}, Lcom/tebakgambar/model/CustomBanner$$Parcelable;->read(Landroid/os/Parcel;Lua/a;)Lcom/tebakgambar/model/CustomBanner;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/CustomBanner$$Parcelable;-><init>(Lcom/tebakgambar/model/CustomBanner;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/CustomBanner$$Parcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/CustomBanner$$Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/CustomBanner$$Parcelable;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/CustomBanner$$Parcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/CustomBanner$$Parcelable$1;->newArray(I)[Lcom/tebakgambar/model/CustomBanner$$Parcelable;

    move-result-object p1

    return-object p1
.end method
