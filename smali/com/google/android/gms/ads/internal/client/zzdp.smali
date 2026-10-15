###### Class com.google.android.gms.ads.internal.client.zzdp (com.google.android.gms.ads.internal.client.zzdp)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzdp;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzdq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzdq;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzdq;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzdo;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_ac

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->k()V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_aa

    .line 3
    :pswitch_d
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->m()Z

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto/16 :goto_aa

    .line 6
    :pswitch_19
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->g()Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_aa

    .line 9
    :pswitch_25
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->n()Z

    move-result p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto/16 :goto_aa

    .line 12
    :pswitch_31
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->b()F

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_aa

    .line 15
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_45

    const/4 p1, 0x0

    goto :goto_59

    :cond_45
    const-string p4, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    .line 16
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 17
    instance-of v0, p4, Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz v0, :cond_53

    .line 18
    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdt;

    goto :goto_59

    :cond_53
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzdr;

    invoke-direct {p4, p1}, Lcom/google/android/gms/ads/internal/client/zzdr;-><init>(Landroid/os/IBinder;)V

    move-object p1, p4

    .line 19
    :goto_59
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->W1(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_aa

    .line 22
    :pswitch_63
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->c()F

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_aa

    .line 25
    :pswitch_6e
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->e()F

    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_aa

    .line 28
    :pswitch_79
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->f()I

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_aa

    .line 31
    :pswitch_84
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->r()Z

    move-result p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->d(Landroid/os/Parcel;Z)V

    goto :goto_aa

    .line 34
    :pswitch_8f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->h(Landroid/os/Parcel;)Z

    move-result p1

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 36
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->H0(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_aa

    .line 38
    :pswitch_9d
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->i()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_aa

    .line 40
    :pswitch_a4
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->j()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_aa
    const/4 p1, 0x1

    return p1

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_9d
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_19
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method
