###### Class com.google.android.gms.internal.ads.zzbsy (com.google.android.gms.internal.ads.zzbsy)
.class public abstract Lcom/google/android/gms/internal/ads/zzbsy;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

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

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p4, :cond_db

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b9

    const/4 v1, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v1, :cond_90

    const/4 v1, 0x5

    if-eq p1, v1, :cond_67

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x7

    if-eq p1, v1, :cond_17

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_32

    .line 3
    :cond_22
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbtj;

    if-eqz v2, :cond_2d

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtj;

    goto :goto_32

    :cond_2d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 7
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->J2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtj;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ec

    .line 9
    :cond_3d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbtn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_5c

    .line 11
    :cond_4c
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbtj;

    if-eqz v2, :cond_57

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtj;

    goto :goto_5c

    :cond_57
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Landroid/os/IBinder;)V

    .line 14
    :goto_5c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 15
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->I2(Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzbtj;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ec

    .line 17
    :cond_67
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbtn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_76

    goto :goto_86

    .line 19
    :cond_76
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 20
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbtj;

    if-eqz v2, :cond_81

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtj;

    goto :goto_86

    :cond_81
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Landroid/os/IBinder;)V

    .line 22
    :goto_86
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 23
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->k6(Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzbtj;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 25
    :cond_90
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbtn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_9f

    goto :goto_af

    .line 27
    :cond_9f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbtj;

    if-eqz v2, :cond_aa

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtj;

    goto :goto_af

    :cond_aa
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_af
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 31
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->L4(Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzbtj;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 33
    :cond_b9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbso;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbso;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c8

    goto :goto_d4

    :cond_c8
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    .line 35
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 36
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbta;

    if-eqz v0, :cond_d4

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbta;

    .line 38
    :cond_d4
    :goto_d4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ec

    .line 40
    :cond_db
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbso;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbso;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_ec
    return p4
.end method
