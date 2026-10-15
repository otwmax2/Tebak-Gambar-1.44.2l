###### Class com.google.android.gms.internal.ads.zzaux (com.google.android.gms.internal.ads.zzaux)
.class public abstract Lcom/google/android/gms/internal/ads/zzaux;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauy;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

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

    packed-switch p1, :pswitch_data_86

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdf;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdg;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzauy;->h5(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_83

    .line 5
    :pswitch_18
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->h(Landroid/os/Parcel;)Z

    move-result p1

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzauy;->ia(Z)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_83

    .line 9
    :pswitch_26
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzauy;->c()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_83

    .line 12
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_41

    const/4 p4, 0x0

    goto :goto_55

    :cond_41
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 14
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzavf;

    if-eqz v1, :cond_4f

    .line 16
    move-object p4, v0

    check-cast p4, Lcom/google/android/gms/internal/ads/zzavf;

    goto :goto_55

    :cond_4f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavd;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Landroid/os/IBinder;)V

    move-object p4, v0

    .line 17
    :goto_55
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 18
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzauy;->ca(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzavf;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_83

    .line 20
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_66

    goto :goto_72

    :cond_66
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 21
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 22
    instance-of p4, p1, Lcom/google/android/gms/internal/ads/zzavc;

    if-eqz p4, :cond_72

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/zzavc;

    .line 24
    :cond_72
    :goto_72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_83

    .line 26
    :pswitch_79
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzauy;->b()Lcom/google/android/gms/ads/internal/client/zzbu;

    move-result-object p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_83
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_79
        :pswitch_5f
        :pswitch_31
        :pswitch_26
        :pswitch_18
        :pswitch_5
    .end packed-switch
.end method
