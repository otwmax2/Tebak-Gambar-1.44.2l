###### Class com.google.android.gms.internal.ads.zzbnt (com.google.android.gms.internal.ads.zzbnt)
.class public abstract Lcom/google/android/gms/internal/ads/zzbnt;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnu;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbnu;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbnu;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbns;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbns;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_13a

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->e()F

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_138

    .line 4
    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->f()F

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_138

    .line 7
    :pswitch_1d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->c()F

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_138

    .line 10
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 12
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnu;->P4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_138

    .line 14
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 18
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzbnu;->A8(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_138

    .line 20
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnu;->X1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_138

    .line 24
    :pswitch_72
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->y()V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_138

    .line 26
    :pswitch_7a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->B()Z

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto/16 :goto_138

    .line 29
    :pswitch_86
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->R()Z

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto/16 :goto_138

    .line 32
    :pswitch_92
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->g()Landroid/os/Bundle;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_138

    .line 35
    :pswitch_9e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->m()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_138

    .line 38
    :pswitch_aa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->k()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_138

    .line 41
    :pswitch_b6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->l()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_138

    .line 44
    :pswitch_c2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x0

    .line 45
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_138

    .line 46
    :pswitch_cb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->h()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_138

    .line 49
    :pswitch_d6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->x()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_138

    .line 52
    :pswitch_e1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->v()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_138

    .line 55
    :pswitch_ec
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->b()D

    move-result-wide p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_138

    .line 58
    :pswitch_f7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->n()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_138

    .line 61
    :pswitch_102
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->p()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_138

    .line 64
    :pswitch_10d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->j()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_138

    .line 67
    :pswitch_118
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->r()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_138

    .line 70
    :pswitch_123
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->t()Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_138

    .line 73
    :pswitch_12e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbnu;->q()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_138
    const/4 p1, 0x1

    return p1

    :pswitch_data_13a
    .packed-switch 0x2
        :pswitch_12e
        :pswitch_123
        :pswitch_118
        :pswitch_10d
        :pswitch_102
        :pswitch_f7
        :pswitch_ec
        :pswitch_e1
        :pswitch_d6
        :pswitch_cb
        :pswitch_c2
        :pswitch_b6
        :pswitch_aa
        :pswitch_9e
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_72
        :pswitch_5f
        :pswitch_3c
        :pswitch_29
        :pswitch_1d
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
