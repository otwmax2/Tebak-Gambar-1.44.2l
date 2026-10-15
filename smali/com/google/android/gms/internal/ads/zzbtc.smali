###### Class com.google.android.gms.internal.ads.zzbtc (com.google.android.gms.internal.ads.zzbtc)
.class public abstract Lcom/google/android/gms/internal/ads/zzbtc;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtd;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdsService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const/4 v0, 0x1

    const-string v1, "com.google.android.gms.ads.internal.request.IAdsServiceResponseListener"

    if-eq p1, v0, :cond_51

    const/4 v2, 0x2

    if-eq p1, v2, :cond_34

    const/4 v2, 0x3

    if-eq p1, v2, :cond_e

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbsv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsv;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_2d

    .line 3
    :cond_1d
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 4
    instance-of v1, p4, Lcom/google/android/gms/internal/ads/zzbtg;

    if-eqz v1, :cond_28

    .line 5
    check-cast p4, Lcom/google/android/gms/internal/ads/zzbtg;

    goto :goto_2d

    :cond_28
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbte;

    invoke-direct {p4, v2}, Lcom/google/android/gms/internal/ads/zzbte;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_2d
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 7
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbtd;->w2(Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbtg;)V

    goto :goto_76

    .line 8
    :cond_34
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbsr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_4d

    .line 10
    :cond_43
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 11
    instance-of p4, p1, Lcom/google/android/gms/internal/ads/zzbtg;

    if-eqz p4, :cond_4d

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtg;

    .line 13
    :cond_4d
    :goto_4d
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    goto :goto_76

    .line 14
    :cond_51
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbsr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_60

    goto :goto_70

    .line 16
    :cond_60
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 17
    instance-of v1, p4, Lcom/google/android/gms/internal/ads/zzbtg;

    if-eqz v1, :cond_6b

    .line 18
    check-cast p4, Lcom/google/android/gms/internal/ads/zzbtg;

    goto :goto_70

    :cond_6b
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbte;

    invoke-direct {p4, v2}, Lcom/google/android/gms/internal/ads/zzbte;-><init>(Landroid/os/IBinder;)V

    .line 19
    :goto_70
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 20
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbtd;->X9(Lcom/google/android/gms/internal/ads/zzbsr;Lcom/google/android/gms/internal/ads/zzbtg;)V

    .line 21
    :goto_76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
