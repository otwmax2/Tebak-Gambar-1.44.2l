###### Class com.tebakgambar.model.request.TGRemoteMessage$$Parcelable (com.tebakgambar.model.request.TGRemoteMessage$$Parcelable)
.class public Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;
.super Ljava/lang/Object;
.source "TGRemoteMessage$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lua/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lua/d<",
        "Lcom/tebakgambar/model/request/TGRemoteMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tGRemoteMessage$$0:Lcom/tebakgambar/model/request/TGRemoteMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/tebakgambar/model/request/TGRemoteMessage;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->tGRemoteMessage$$0:Lcom/tebakgambar/model/request/TGRemoteMessage;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lua/a;)Lcom/tebakgambar/model/request/TGRemoteMessage;
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

    check-cast p0, Lcom/tebakgambar/model/request/TGRemoteMessage;

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
    new-instance v2, Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {v2}, Lcom/tebakgambar/model/request/TGRemoteMessage;-><init>()V

    .line 8
    invoke-virtual {p1, v1, v2}, Lua/a;->f(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonNegativeText:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonPositiveText:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0, v2}, Lua/a;->f(ILjava/lang/Object;)V

    return-object v2
.end method

.method public static write(Lcom/tebakgambar/model/request/TGRemoteMessage;Landroid/os/Parcel;ILua/a;)V
    .registers 5

    .line 1
    invoke-virtual {p3, p0}, Lua/a;->c(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_b

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 3
    :cond_b
    invoke-virtual {p3, p0}, Lua/a;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonNegativeText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonPositiveText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/tebakgambar/model/request/TGRemoteMessage;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->tGRemoteMessage$$0:Lcom/tebakgambar/model/request/TGRemoteMessage;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->getParcel()Lcom/tebakgambar/model/request/TGRemoteMessage;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->tGRemoteMessage$$0:Lcom/tebakgambar/model/request/TGRemoteMessage;

    new-instance v1, Lua/a;

    invoke-direct {v1}, Lua/a;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->write(Lcom/tebakgambar/model/request/TGRemoteMessage;Landroid/os/Parcel;ILua/a;)V

    return-void
.end method

###### Class com.tebakgambar.model.request.TGRemoteMessage$$Parcelable.AnonymousClass1 (com.tebakgambar.model.request.TGRemoteMessage$$Parcelable$1)
.class Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable$1;
.super Ljava/lang/Object;
.source "TGRemoteMessage$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;
    .registers 4

    .line 2
    new-instance v0, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;

    new-instance v1, Lua/a;

    invoke-direct {v1}, Lua/a;-><init>()V

    invoke-static {p1, v1}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;->read(Landroid/os/Parcel;Lua/a;)Lcom/tebakgambar/model/request/TGRemoteMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;-><init>(Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable$1;->newArray(I)[Lcom/tebakgambar/model/request/TGRemoteMessage$$Parcelable;

    move-result-object p1

    return-object p1
.end method
