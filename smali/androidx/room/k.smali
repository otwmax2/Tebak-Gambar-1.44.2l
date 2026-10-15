###### Class androidx.room.k (androidx.room.k)
.class public interface abstract Landroidx/room/k;
.super Ljava/lang/Object;
.source "IMultiInstanceInvalidationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/k$a;
    }
.end annotation


# virtual methods
.method public abstract Z2([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class androidx.room.k.a (androidx.room.k$a)
.class public abstract Landroidx/room/k$a;
.super Landroid/os/Binder;
.source "IMultiInstanceInvalidationCallback.java"

# interfaces
.implements Landroidx/room/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/k$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static P0(Landroid/os/IBinder;)Landroidx/room/k;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Landroidx/room/k;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Landroidx/room/k;

    return-object v0

    .line 4
    :cond_13
    new-instance v0, Landroidx/room/k$a$a;

    invoke-direct {v0, p0}, Landroidx/room/k$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static X0()Landroidx/room/k;
    .registers 1

    .line 1
    sget-object v0, Landroidx/room/k$a$a;->p:Landroidx/room/k;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "androidx.room.IMultiInstanceInvalidationCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/room/k;->Z2([Ljava/lang/String;)V

    return v0
.end method

###### Class androidx.room.k.a.C0066a (androidx.room.k$a$a)
.class Landroidx/room/k$a$a;
.super Ljava/lang/Object;
.source "IMultiInstanceInvalidationCallback.java"

# interfaces
.implements Landroidx/room/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static p:Landroidx/room/k;


# instance fields
.field private o:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/k$a$a;->o:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public Z2([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroidx/room/k$a$a;->o:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 5
    invoke-static {}, Landroidx/room/k$a;->X0()Landroidx/room/k;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 6
    invoke-static {}, Landroidx/room/k$a;->X0()Landroidx/room/k;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/room/k;->Z2([Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2b

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/k$a$a;->o:Landroid/os/IBinder;

    return-object v0
.end method
