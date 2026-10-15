###### Class com.google.android.gms.internal.ads.zzbuf (com.google.android.gms.internal.ads.zzbuf)
.class public abstract Lcom/google/android/gms/internal/ads/zzbuf;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbug;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_149

    const/4 v0, 0x2

    if-eq p1, v0, :cond_142

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_11e

    const/16 v0, 0x22

    if-eq p1, v0, :cond_110

    packed-switch p1, :pswitch_data_15c

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->a()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_15a

    .line 4
    :pswitch_1f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->x()Z

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto/16 :goto_15a

    .line 7
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 9
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->l6(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 11
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 13
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 15
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 18
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5f

    goto :goto_72

    :cond_5f
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    .line 19
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz v1, :cond_6d

    .line 21
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbue;

    goto :goto_72

    :cond_6d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbue;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbue;-><init>(Landroid/os/IBinder;)V

    .line 22
    :goto_72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 23
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzbug;->o3(Lcom/google/android/gms/internal/ads/zzbue;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 25
    :pswitch_7d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->zzb()Landroid/os/Bundle;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_15a

    .line 28
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzby;

    move-result-object p1

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 30
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->V8(Lcom/google/android/gms/ads/internal/client/zzby;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 32
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 34
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->b0(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 36
    :pswitch_ab
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->d()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_15a

    .line 39
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 41
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->B0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 43
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 45
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->c1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 47
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 48
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 49
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->u0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_15a

    .line 51
    :pswitch_f0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->b()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 53
    :pswitch_f7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->h()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 55
    :pswitch_fe
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->f()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 57
    :pswitch_105
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->q()Z

    move-result p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto :goto_15a

    .line 60
    :cond_110
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->h(Landroid/os/Parcel;)Z

    move-result p1

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 62
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->G0(Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 64
    :cond_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_125

    goto :goto_138

    :cond_125
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 65
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v1, :cond_133

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbuj;

    goto :goto_138

    :cond_133
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbuh;-><init>(Landroid/os/IBinder;)V

    .line 68
    :goto_138
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 69
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzbug;->f4(Lcom/google/android/gms/internal/ads/zzbuj;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 71
    :cond_142
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbug;->r()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_15a

    .line 73
    :cond_149
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbuk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuk;

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 75
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbug;->b4(Lcom/google/android/gms/internal/ads/zzbuk;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_15a
    return p4

    nop

    :pswitch_data_15c
    .packed-switch 0x5
        :pswitch_105
        :pswitch_fe
        :pswitch_f7
        :pswitch_f0
        :pswitch_dd
        :pswitch_ca
        :pswitch_b7
        :pswitch_ab
        :pswitch_9c
        :pswitch_89
        :pswitch_7d
        :pswitch_58
        :pswitch_4d
        :pswitch_3a
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
    .end packed-switch
.end method
