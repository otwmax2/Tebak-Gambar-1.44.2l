###### Class com.google.android.gms.dynamic.IFragmentWrapper (com.google.android.gms.dynamic.IFragmentWrapper)
.class public interface abstract Lcom/google/android/gms/dynamic/IFragmentWrapper;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
    }
.end annotation


# virtual methods
.method public abstract A1(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract B()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract C()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract C0(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract E()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract F4(Landroid/content/Intent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract G0(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract N()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract d()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract e()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract f()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract g()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract q()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract t()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract v()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract v4(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract w9(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract x()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract y()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zzb()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.dynamic.IFragmentWrapper.Stub (com.google.android.gms.dynamic.IFragmentWrapper$Stub)
.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final P0(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_160

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 5
    :pswitch_18
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 8
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->F4(Landroid/content/Intent;I)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 10
    :pswitch_2f
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 13
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->v4(Landroid/content/Intent;)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 15
    :pswitch_42
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->g(Landroid/os/Parcel;)Z

    move-result p1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->w9(Z)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 19
    :pswitch_51
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->g(Landroid/os/Parcel;)Z

    move-result p1

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 21
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->G0(Z)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 23
    :pswitch_60
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->g(Landroid/os/Parcel;)Z

    move-result p1

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 25
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->C0(Z)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 27
    :pswitch_6f
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->g(Landroid/os/Parcel;)Z

    move-result p1

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 29
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->A1(Z)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 31
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 33
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->c1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15e

    .line 35
    :pswitch_91
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->B()Z

    move-result p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 38
    :pswitch_9d
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->N()Z

    move-result p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 41
    :pswitch_a9
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->E()Z

    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 44
    :pswitch_b5
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->y()Z

    move-result p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 47
    :pswitch_c1
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->C()Z

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 50
    :pswitch_cd
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->t()Z

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 53
    :pswitch_d9
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->v()Z

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto/16 :goto_15e

    .line 56
    :pswitch_e5
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->g()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_15e

    .line 59
    :pswitch_f1
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->x()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto :goto_15e

    .line 62
    :pswitch_fc
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->a()I

    move-result p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15e

    .line 65
    :pswitch_107
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->c()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_15e

    .line 68
    :pswitch_112
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->h()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_15e

    .line 71
    :pswitch_11d
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->q()Z

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->c(Landroid/os/Parcel;Z)V

    goto :goto_15e

    .line 74
    :pswitch_128
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->f()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_15e

    .line 77
    :pswitch_133
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->b()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_15e

    .line 80
    :pswitch_13e
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzb()I

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15e

    .line 83
    :pswitch_149
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->d()Landroid/os/Bundle;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_15e

    .line 86
    :pswitch_154
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->e()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_15e
    const/4 p1, 0x1

    return p1

    :pswitch_data_160
    .packed-switch 0x2
        :pswitch_154
        :pswitch_149
        :pswitch_13e
        :pswitch_133
        :pswitch_128
        :pswitch_11d
        :pswitch_112
        :pswitch_107
        :pswitch_fc
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_cd
        :pswitch_c1
        :pswitch_b5
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_7e
        :pswitch_6f
        :pswitch_60
        :pswitch_51
        :pswitch_42
        :pswitch_2f
        :pswitch_18
        :pswitch_5
    .end packed-switch
.end method
