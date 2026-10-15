###### Class com.google.android.gms.internal.ads.zzbuy (com.google.android.gms.internal.ads.zzbuy)
.class public abstract Lcom/google/android/gms/internal/ads/zzbuy;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_56

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbuz;->b()V

    goto :goto_51

    .line 2
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbuz;->c()V

    goto :goto_51

    .line 3
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbuz;->Q8(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_51

    .line 6
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbuz;->j0(I)V

    goto :goto_51

    .line 9
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2f

    const/4 p1, 0x0

    goto :goto_43

    :cond_2f
    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    .line 10
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 11
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzbut;

    if-eqz v0, :cond_3d

    .line 12
    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbut;

    goto :goto_43

    :cond_3d
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzbur;-><init>(Landroid/os/IBinder;)V

    move-object p1, p4

    .line 13
    :goto_43
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbuz;->g8(Lcom/google/android/gms/internal/ads/zzbut;)V

    goto :goto_51

    .line 15
    :pswitch_4a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbuz;->e()V

    goto :goto_51

    .line 16
    :pswitch_4e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbuz;->h()V

    .line 17
    :goto_51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4a
        :pswitch_27
        :pswitch_1c
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
