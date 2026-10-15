###### Class com.google.android.gms.ads.internal.client.zzdm (com.google.android.gms.ads.internal.client.zzdm)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzdm;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzdn;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzdn;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzdn;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzdl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_48

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->f()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_46

    :pswitch_10
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->b()Landroid/os/Bundle;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_46

    :pswitch_1b
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->c()Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_46

    :pswitch_26
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->h()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_46

    :pswitch_31
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->g()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_46

    .line 12
    :pswitch_3c
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdn;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_46
    const/4 p1, 0x1

    return p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_31
        :pswitch_26
        :pswitch_1b
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method
