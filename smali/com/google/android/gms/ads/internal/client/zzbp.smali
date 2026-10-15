###### Class com.google.android.gms.ads.internal.client.zzbp (com.google.android.gms.ads.internal.client.zzbp)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzbp;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzbq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_128

    :pswitch_4
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->ya(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 5
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbkf;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkg;

    move-result-object p1

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->e9(Lcom/google/android/gms/internal/ads/zzbkg;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 9
    :pswitch_2c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjx;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 11
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->H8(Lcom/google/android/gms/internal/ads/zzbjx;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 13
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbfk;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfl;

    move-result-object p1

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 15
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->F1(Lcom/google/android/gms/internal/ads/zzbfl;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 17
    :pswitch_52
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 19
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->pa(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 21
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbfh;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object p1

    .line 22
    sget-object p4, Lcom/google/android/gms/ads/internal/client/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzq;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 24
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzbq;->n6(Lcom/google/android/gms/internal/ads/zzbfi;Lcom/google/android/gms/ads/internal/client/zzq;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 26
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_87

    goto :goto_99

    :cond_87
    const-string p4, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 27
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 28
    instance-of v0, p4, Lcom/google/android/gms/ads/internal/client/zzcf;

    if-eqz v0, :cond_94

    .line 29
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzcf;

    goto :goto_99

    :cond_94
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzcf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/ads/internal/client/zzcf;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_99
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 31
    invoke-interface {p0, p4}, Lcom/google/android/gms/ads/internal/client/zzbq;->x9(Lcom/google/android/gms/ads/internal/client/zzcf;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 33
    :pswitch_a4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdl;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 35
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->wa(Lcom/google/android/gms/internal/ads/zzbdl;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_126

    .line 37
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzbfd;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfe;

    move-result-object p4

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfa;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object v0

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 41
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/ads/internal/client/zzbq;->X5(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfe;Lcom/google/android/gms/internal/ads/zzbfb;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 43
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbex;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbey;

    move-result-object p1

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 45
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->G7(Lcom/google/android/gms/internal/ads/zzbey;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 47
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbeu;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p1

    .line 48
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 49
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->x3(Lcom/google/android/gms/internal/ads/zzbev;)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 51
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_100

    goto :goto_112

    :cond_100
    const-string p4, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 52
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 53
    instance-of v0, p4, Lcom/google/android/gms/ads/internal/client/zzbh;

    if-eqz v0, :cond_10d

    .line 54
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzbh;

    goto :goto_112

    :cond_10d
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzbf;

    invoke-direct {p4, p1}, Lcom/google/android/gms/ads/internal/client/zzbf;-><init>(Landroid/os/IBinder;)V

    .line 55
    :goto_112
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 56
    invoke-interface {p0, p4}, Lcom/google/android/gms/ads/internal/client/zzbq;->Y8(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_126

    .line 58
    :pswitch_11c
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbq;->b()Lcom/google/android/gms/ads/internal/client/zzbn;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_126
    const/4 p1, 0x1

    return p1

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_f9
        :pswitch_e7
        :pswitch_d5
        :pswitch_b7
        :pswitch_a4
        :pswitch_80
        :pswitch_65
        :pswitch_52
        :pswitch_3f
        :pswitch_4
        :pswitch_4
        :pswitch_2c
        :pswitch_19
        :pswitch_6
    .end packed-switch
.end method
