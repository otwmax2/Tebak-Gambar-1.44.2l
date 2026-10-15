###### Class b.a (b.a)
.class public interface abstract Lb/a;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a;
    }
.end annotation


# virtual methods
.method public abstract Y9(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class b.a.AbstractBinderC0077a (b.a$a)
.class public abstract Lb/a$a;
.super Landroid/os/Binder;
.source "INotificationSideChannel.java"

# interfaces
.implements Lb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a$a;
    }
.end annotation


# direct methods
.method public static P0(Landroid/os/IBinder;)Lb/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lb/a;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lb/a;

    return-object v0

    .line 4
    :cond_13
    new-instance v0, Lb/a$a$a;

    invoke-direct {v0, p0}, Lb/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static X0()Lb/a;
    .registers 1

    .line 1
    sget-object v0, Lb/a$a$a;->p:Lb/a;

    return-object v0
.end method

###### Class b.a.AbstractBinderC0077a.C0078a (b.a$a$a)
.class Lb/a$a$a;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Lb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static p:Lb/a;


# instance fields
.field private o:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a$a$a;->o:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public Y9(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.support.v4.app.INotificationSideChannel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1d

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p4, v0, v1}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 8
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    :goto_20
    iget-object v1, p0, Lb/a$a$a;->o:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 10
    invoke-static {}, Lb/a$a;->X0()Lb/a;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 11
    invoke-static {}, Lb/a$a;->X0()Lb/a;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lb/a;->Y9(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3e

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lb/a$a$a;->o:Landroid/os/IBinder;

    return-object v0
.end method
